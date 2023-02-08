lbl_801CE75C:
/* 801CE75C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CE760  7C 08 02 A6 */	mflr r0
/* 801CE764  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CE768  38 00 00 00 */	li r0, 0
/* 801CE76C  90 03 00 80 */	stw r0, 0x80(r3)
/* 801CE770  80 83 00 78 */	lwz r4, 0x78(r3)
/* 801CE774  80 84 00 00 */	lwz r4, 0(r4)
/* 801CE778  90 83 00 7C */	stw r4, 0x7c(r3)
/* 801CE77C  80 83 00 7C */	lwz r4, 0x7c(r3)
/* 801CE780  28 04 00 00 */	cmplwi r4, 0
/* 801CE784  41 82 00 14 */	beq lbl_801CE798
/* 801CE788  80 84 00 20 */	lwz r4, 0x20(r4)
/* 801CE78C  90 83 00 A0 */	stw r4, 0xa0(r3)
/* 801CE790  90 03 00 94 */	stw r0, 0x94(r3)
/* 801CE794  48 00 00 15 */	bl getFirstStage__15renderingFmap_cFv
lbl_801CE798:
/* 801CE798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CE79C  7C 08 03 A6 */	mtlr r0
/* 801CE7A0  38 21 00 10 */	addi r1, r1, 0x10
/* 801CE7A4  4E 80 00 20 */	blr 
