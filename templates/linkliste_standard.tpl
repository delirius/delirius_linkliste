<?php if ($this->favicon)
{

    ?>

<div id="favicon">

        <?php
        $countcat = count($this->linkliste);
        $j = 0;
        foreach ($this->linkliste as $cat):
            $j++;
            $classcat = ((($j % 2) == 0) ? ' even' : ' odd') . (($j == 1) ? ' first' : '') . (($j == $countcat) ? ' last' : '');

            echo '<div class="linkliste_category'.$classcat.'">'.$cat[0]['categorietitle'].'</div>';

            $cc = count($cat);
            $clast = $cc-1;
            for ($i=0;$i<$cc;$i++):

                $class = ((($i % 2) == 0) ? ' odd' : ' even') . (($i == 0) ? ' first' : '') . (($i == $clast) ? ' last' : '');
                echo '<div class="linkliste_wrapper'.$class.'">';
                if ($cat[$i]['url'] != '')
                {
                    if ($cat[$i]['image'] != '')
                    {
                        $fav = ' data-linkUrl="' . $cat[$i]['image'] . '"';
                    } else
                    {
                        $fav = '';
                    }

                    echo '<div class="linkliste_title">';
                    echo '<img class="favicon-img" src="'.$this->standardfavicon.'" alt="'.$cat[$i]['url_text'].'" />';
                    echo '<a'.$fav.' href="'.$cat[$i]['url_protocol'].$cat[$i]['url'].'"'.LINK_NEW_WINDOW.'>'.$cat[$i]['url_text'].'</a>';
                    echo '</div>';
                }
                if ($cat[$i]['description'] != '')
                {
                    echo '<div style="padding-left:22px;" class="linkliste_text">'.$cat[$i]['description'].'</div>';
                }
                echo '</div>';

                ?>

            <?php endfor; ?>
        <?php endforeach; ?>
</div>


    <?php }  else
{ // favicon ?>

    <?php
    $countcat = count($this->linkliste);
    $j = 0;
    foreach ($this->linkliste as $cat):
        $j++;
        $classcat = ((($j % 2) == 0) ? ' even' : ' odd') . (($j == 1) ? ' first' : '') . (($j == $countcat) ? ' last' : '');

        echo '<div class="linkliste_category'.$classcat.'">'.$cat[0]['categorietitle'].'</div>';

        $cc = count($cat);
        $clast = $cc-1;
        for ($i=0;$i<$cc;$i++):

            $class = ((($i % 2) == 0) ? ' odd' : ' even') . (($i == 0) ? ' first' : '') . (($i == $clast) ? ' last' : '');
            echo '<div class="linkliste_wrapper'.$class.'">';
            if ($cat[$i]['url'] != '')
            {
                echo '<div class="linkliste_title">';
                echo '<a href="'.$cat[$i]['url_protocol'].$cat[$i]['url'].'"'.LINK_NEW_WINDOW.'>'.$cat[$i]['url_text'].'</a>';
                echo '</div>';
            }
            if ($cat[$i]['description'] != '')
            {
                echo '<div class="linkliste_text">'.$cat[$i]['description'].'</div>';
            }
            echo '</div>';

            ?>

        <?php endfor; ?>
    <?php endforeach; ?>



    <?php } // favicon ?>

