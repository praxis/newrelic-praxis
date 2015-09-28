module NewRelic
  module Agent
    module Instrumentation
      module Praxis

        class RequestSubscriber < EventedSubscriber

          def start(name, id, payload) #THREAD_LOCAL_ACCESS

            action = payload[:request].action
            controller = action.resource_definition.controller
            metric_name = "Controller/#{controller.name}/#{action.name}"
            current = NewRelic::Agent::Transaction.tl_current
            current.set_overriding_transaction_name(metric_name, nil)
          rescue => e
            log_notification_error(e, name, 'start')
          end

          def finish(name, id, payload)
          end

        end
      end
    end
  end
end
