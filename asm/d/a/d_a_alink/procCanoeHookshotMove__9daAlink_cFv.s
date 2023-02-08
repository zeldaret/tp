lbl_800F7388:
/* 800F7388  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F738C  7C 08 02 A6 */	mflr r0
/* 800F7390  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F7394  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F7398  7C 7F 1B 78 */	mr r31, r3
/* 800F739C  48 01 1B C9 */	bl cancelHookshotMove__9daAlink_cFv
/* 800F73A0  7F E3 FB 78 */	mr r3, r31
/* 800F73A4  48 01 16 75 */	bl checkHookshotWait__9daAlink_cCFv
/* 800F73A8  2C 03 00 00 */	cmpwi r3, 0
/* 800F73AC  41 82 00 10 */	beq lbl_800F73BC
/* 800F73B0  7F E3 FB 78 */	mr r3, r31
/* 800F73B4  38 80 00 12 */	li r4, 0x12
/* 800F73B8  4B FB BE 99 */	bl setDoStatus__9daAlink_cFUc
lbl_800F73BC:
/* 800F73BC  7F E3 FB 78 */	mr r3, r31
/* 800F73C0  4B FF D4 19 */	bl canoeCommon__9daAlink_cFv
/* 800F73C4  2C 03 00 00 */	cmpwi r3, 0
/* 800F73C8  41 82 00 0C */	beq lbl_800F73D4
/* 800F73CC  38 60 00 01 */	li r3, 1
/* 800F73D0  48 00 00 20 */	b lbl_800F73F0
lbl_800F73D4:
/* 800F73D4  7F E3 FB 78 */	mr r3, r31
/* 800F73D8  4B FF D5 4D */	bl checkNextActionCanoe__9daAlink_cFv
/* 800F73DC  2C 03 00 00 */	cmpwi r3, 0
/* 800F73E0  40 82 00 0C */	bne lbl_800F73EC
/* 800F73E4  7F E3 FB 78 */	mr r3, r31
/* 800F73E8  4B FF 7C 69 */	bl setBodyAngleRideReadyAnime__9daAlink_cFv
lbl_800F73EC:
/* 800F73EC  38 60 00 01 */	li r3, 1
lbl_800F73F0:
/* 800F73F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F73F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F73F8  7C 08 03 A6 */	mtlr r0
/* 800F73FC  38 21 00 10 */	addi r1, r1, 0x10
/* 800F7400  4E 80 00 20 */	blr 
