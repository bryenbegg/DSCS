<h1>Hero Types</h1>
<table>
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Parent</th>
    </tr>

    <!-- Here is where we loop through our $posts array, printing out post info -->

    <?php foreach ($HeroTypes as $herotype): ?>
    <tr>
        <td><?php echo $herotype['HeroType']['id']; ?></td>
        <td><?php echo $herotype['HeroType']['name']; ?></td>
        <td><?php echo $herotype['HeroType']['parent']; ?></td>
    </tr>
    <?php endforeach; ?>
    <?php unset($herotype); ?>
</table>