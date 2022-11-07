<?php
if ($current_page > 3) {
    $first_page = 1; ?>
    <li class="page-item" href="?per_page=<?= $item_per_page ?>&page=<?= $first_page ?>">First</li>
<?php }
if ($current_page > 1) {
    $prev_page = $current_page - 1;
?>
    <li class="page-item" href="?per_page=<?= $item_per_page ?>&page=<?= $prev_page ?>">Prev</li>
<?php }
?>


<?php for ($num = 1; $num <= $totalPages; $num++) { ?>
    <?php if ($num != $current_page) { ?>
        <?php if ($num > $current_page - 3 && $num < $current_page + 3) { ?>
            <li class="page-item" href="?per_page=<?= $item_per_page ?>&page=<?= $num ?>"><?= $num ?></li>
        <?php } ?>
    <?php } else { ?>
        <strong class="current-page page-item"><?= $num ?></strong>
    <?php } ?>
<?php } ?>
<?php
if ($current_page < $totalPages - 1) {
    $next_page = $current_page + 1; ?>
    <li class="page-item" href="?per_page=<?= $item_per_page ?>&page=<?= $next_page ?>">Next</li>
<?php
}
if ($current_page < $totalPages - 3) {
    $end_page = $totalPages; ?>
    <li class="page-item" href="?per_page=<?= $item_per_page ?>&page=<?= $end_page ?>">Last</li>

<?php
}
?>