# Creating a Custom Event

Custom events are useful when you want to extend the functionality of the plugin, either because you want a new event or to integrate a whole new system. First you must understand how an event works: 

1. The sequence is started. 
2. The sequence executes the event. 
3. The event emits the `event_started` signal. 
4. The event calls its `execute()` function. 
5. The sequence waits for the `event_finished` signal to know that it must continue to the next event. 

The process repeats until there are no more events in the sequence.

You can read more about how the plugin works internally on the information page.

## Make an script

El script será el corazón de tu evento. Lo que pongas en el mismo será exactamente lo que se ejecutará en el juego.

El script debe extender [`DialogEventResource`](../documentation/resource-class/class_dialog-event-resource/) y sobrecargar el método [`execute()`](../documentation/resource-class/class_dialog-event-resource/#void-execute-dialogbasenode-caller) .

El plugin viene con una plantilla para la creación del evento, su uso es recomendado.

The script will be the heart of your event. What you put in it will be exactly what will be executed in the game. 

The script must extend [`DialogEventResource`](../documentation/resource-class/class_dialog-event-resource/) and override the [`execute()`](../documentation/resource-class/class_dialog-event-resource/#void-execute-dialogbasenode-caller) method. 

The plugin comes with a template for creating the event, its use is recommended.

## Register your script in the corresponding category

Este paso es opcional, pero es requerido si quieres añadir un botón que genera tu evento en el editor de secuencias.

This step is optional, but is required if you want to add a button that generates your event in the sequence editor.

Extend `DialogMiscelaneousEvent`, `DialogCharacterEvent`, `DialogTextEvent` or `DialogLogicEvent` and assign it a unique `class_name`. Then restart the plugin so that your event appears in the event bar.

