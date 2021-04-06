lbl_80C1423C:
/* 80C1423C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C14240  7C 08 02 A6 */	mflr r0
/* 80C14244  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C14248  39 61 00 20 */	addi r11, r1, 0x20
/* 80C1424C  4B 74 DF 91 */	bl _savegpr_29
/* 80C14250  7C 7D 1B 78 */	mr r29, r3
/* 80C14254  38 7D 06 10 */	addi r3, r29, 0x610
/* 80C14258  4B 3F 91 D1 */	bl play__14mDoExt_baseAnmFv
/* 80C1425C  7C 7E 1B 78 */	mr r30, r3
/* 80C14260  38 7D 06 80 */	addi r3, r29, 0x680
/* 80C14264  4B 3F 91 C5 */	bl play__14mDoExt_baseAnmFv
/* 80C14268  7C 7F 1B 78 */	mr r31, r3
/* 80C1426C  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 80C14270  4B 3F 91 B9 */	bl play__14mDoExt_baseAnmFv
/* 80C14274  2C 1E 00 01 */	cmpwi r30, 1
/* 80C14278  40 82 00 1C */	bne lbl_80C14294
/* 80C1427C  2C 1F 00 01 */	cmpwi r31, 1
/* 80C14280  40 82 00 14 */	bne lbl_80C14294
/* 80C14284  2C 03 00 01 */	cmpwi r3, 1
/* 80C14288  40 82 00 0C */	bne lbl_80C14294
/* 80C1428C  7F A3 EB 78 */	mr r3, r29
/* 80C14290  4B FF FF 05 */	bl init_modeWait__12daGrdWater_cFv
lbl_80C14294:
/* 80C14294  39 61 00 20 */	addi r11, r1, 0x20
/* 80C14298  4B 74 DF 91 */	bl _restgpr_29
/* 80C1429C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C142A0  7C 08 03 A6 */	mtlr r0
/* 80C142A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C142A8  4E 80 00 20 */	blr 
