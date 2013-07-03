<h1>Character Sheet</h1>
<table>
    <tr>
        <?php 
            foreach (array_keys($CharSheets) as $key){
                echo "<th>".$key."</th>";
            }
            unset($key);
        ?>
    </tr>

    <!-- Here is where we loop through our $posts array, printing out post info -->
    <tr>
        <?php foreach ($CharSheets as $sheet){
            foreach (array_keys($sheet['CharacterSheet']) as $keys){
            echo "<td>".$sheet['CharacterSheet'][$key]."</td>";   
            }
            
        }
        ?> 
    </tr>
    <?php unset($sheet);
    unset($keys); ?>
</table>