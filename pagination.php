<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="admin_style.css">
<div id="pagination">
    <?php
    if ($current_page > 3) {
        $first_page = 1; ?>
        <a class="page-item" href="?per_page=<?= $item_per_page ?>&page=<?= $first_page ?>">First</a>
    <?php }
    if ($current_page > 1) {
        $prev_page = $current_page - 1;
    ?>
        <a class="page-item" href="?per_page=<?= $item_per_page ?>&page=<?= $prev_page ?>">Prev</a>
    <?php }
    ?>


    <?php for ($num_page = 1; $num_page <= $totalPages; $num_page++) { ?>
        <?php if ($num_page != $current_page) { ?>
            <?php if ($num_page > $current_page - 3 && $num_page < $current_page + 3) { ?>
                <a class="page-item" href="?per_page=<?= $item_per_page ?>&page=<?= $num_page ?>"><?= $num_page ?></a>
            <?php } ?>
        <?php } else { ?>
            <strong class="current-page page-item"><?= $num_page ?></strong>
        <?php } ?>
    <?php } ?>
    <?php
    if ($current_page < $totalPages - 1) {
        $next_page = $current_page + 1; ?>
        <a class="page-item" href="?per_page=<?= $item_per_page ?>&page=<?= $next_page ?>">Next</a>
    <?php
    }
    if ($current_page < $totalPages - 3) {
        $end_page = $totalPages; ?>
        <a class="page-item" href="?per_page=<?= $item_per_page ?>&page=<?= $end_page ?>">Last</a>

    <?php
    }
    ?>
</div>