lbl_80C48708:
/* 80C48708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4870C  7C 08 02 A6 */	mflr r0
/* 80C48710  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C48714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C48718  7C 7F 1B 78 */	mr r31, r3
/* 80C4871C  88 03 05 EA */	lbz r0, 0x5ea(r3)
/* 80C48720  28 00 00 03 */	cmplwi r0, 3
/* 80C48724  40 82 00 28 */	bne lbl_80C4874C
/* 80C48728  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C4872C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C48730  38 63 09 58 */	addi r3, r3, 0x958
/* 80C48734  38 80 00 02 */	li r4, 2
/* 80C48738  4B 3E C1 FC */	b isDungeonItem__12dSv_memBit_cCFi
/* 80C4873C  2C 03 00 00 */	cmpwi r3, 0
/* 80C48740  40 82 00 28 */	bne lbl_80C48768
/* 80C48744  38 60 00 00 */	li r3, 0
/* 80C48748  48 00 00 3C */	b lbl_80C48784
lbl_80C4874C:
/* 80C4874C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C48750  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C48754  88 03 09 74 */	lbz r0, 0x974(r3)
/* 80C48758  28 00 00 00 */	cmplwi r0, 0
/* 80C4875C  40 82 00 0C */	bne lbl_80C48768
/* 80C48760  38 60 00 00 */	li r3, 0
/* 80C48764  48 00 00 20 */	b lbl_80C48784
lbl_80C48768:
/* 80C48768  7F E3 FB 78 */	mr r3, r31
/* 80C4876C  4B FF FE 25 */	bl checkArea__12daObjKshtr_cFv
/* 80C48770  2C 03 00 00 */	cmpwi r3, 0
/* 80C48774  40 82 00 0C */	bne lbl_80C48780
/* 80C48778  38 60 00 00 */	li r3, 0
/* 80C4877C  48 00 00 08 */	b lbl_80C48784
lbl_80C48780:
/* 80C48780  38 60 00 01 */	li r3, 1
lbl_80C48784:
/* 80C48784  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C48788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4878C  7C 08 03 A6 */	mtlr r0
/* 80C48790  38 21 00 10 */	addi r1, r1, 0x10
/* 80C48794  4E 80 00 20 */	blr 
