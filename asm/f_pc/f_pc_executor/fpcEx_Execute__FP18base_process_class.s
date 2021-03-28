lbl_800213C4:
/* 800213C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800213C8  7C 08 02 A6 */	mflr r0
/* 800213CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800213D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800213D4  7C 7F 1B 78 */	mr r31, r3
/* 800213D8  88 03 00 0C */	lbz r0, 0xc(r3)
/* 800213DC  2C 00 00 02 */	cmpwi r0, 2
/* 800213E0  40 82 00 14 */	bne lbl_800213F4
/* 800213E4  38 80 00 01 */	li r4, 1
/* 800213E8  48 00 24 5D */	bl fpcPause_IsEnable__FPvUc
/* 800213EC  2C 03 00 01 */	cmpwi r3, 1
/* 800213F0  40 82 00 0C */	bne lbl_800213FC
lbl_800213F4:
/* 800213F4  38 60 00 00 */	li r3, 0
/* 800213F8  48 00 00 0C */	b lbl_80021404
lbl_800213FC:
/* 800213FC  7F E3 FB 78 */	mr r3, r31
/* 80021400  4B FF F2 C5 */	bl fpcBs_Execute__FP18base_process_class
lbl_80021404:
/* 80021404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80021408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002140C  7C 08 03 A6 */	mtlr r0
/* 80021410  38 21 00 10 */	addi r1, r1, 0x10
/* 80021414  4E 80 00 20 */	blr 
