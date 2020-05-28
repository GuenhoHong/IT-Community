<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

// input의 name을 boset[배열키] 형태로 등록

?>

<table>
<caption>쓰기설정</caption>
<colgroup>
	<col class="grid_2">
	<col>
</colgroup>
<thead>
<tr>
	<th scope="col">구분</th>
	<th scope="col">설정</th>
</tr>
</thead>
<tbody>
<tr>
	<td align="center">태그등록</td>
	<td>
		<select name="boset[tag]">
			<?php echo apms_grade_options($boset['tag']);?>
		</select>
		등급 이상 회원만 태그등록 허용
	</td>
</tr>
</tbody>
</table>
