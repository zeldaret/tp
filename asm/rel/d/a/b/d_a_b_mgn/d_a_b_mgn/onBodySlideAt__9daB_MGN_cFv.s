lbl_80607BB0:
/* 80607BB0  38 80 00 00 */	li r4, 0
/* 80607BB4  3C A0 80 61 */	lis r5, data_8061018C@ha /* 0x8061018C@ha */
/* 80607BB8  39 05 01 8C */	addi r8, r5, data_8061018C@l /* 0x8061018C@l */
/* 80607BBC  38 E0 00 1F */	li r7, 0x1f
/* 80607BC0  38 C0 00 06 */	li r6, 6
/* 80607BC4  38 A0 00 01 */	li r5, 1
/* 80607BC8  38 00 00 0F */	li r0, 0xf
/* 80607BCC  7C 09 03 A6 */	mtctr r0
lbl_80607BD0:
/* 80607BD0  88 08 00 00 */	lbz r0, 0(r8)
/* 80607BD4  28 00 00 00 */	cmplwi r0, 0
/* 80607BD8  41 82 00 14 */	beq lbl_80607BEC
/* 80607BDC  7D 23 22 14 */	add r9, r3, r4
/* 80607BE0  90 E9 0D 70 */	stw r7, 0xd70(r9)
/* 80607BE4  98 C9 0D E7 */	stb r6, 0xde7(r9)
/* 80607BE8  98 A9 0D 84 */	stb r5, 0xd84(r9)
lbl_80607BEC:
/* 80607BEC  38 84 01 38 */	addi r4, r4, 0x138
/* 80607BF0  39 08 00 01 */	addi r8, r8, 1
/* 80607BF4  42 00 FF DC */	bdnz lbl_80607BD0
/* 80607BF8  4E 80 00 20 */	blr 
