lbl_800F2898:
/* 800F2898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F289C  7C 08 02 A6 */	mflr r0
/* 800F28A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F28A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F28A8  7C 7F 1B 78 */	mr r31, r3
/* 800F28AC  48 01 66 B9 */	bl cancelHookshotMove__9daAlink_cFv
/* 800F28B0  7F E3 FB 78 */	mr r3, r31
/* 800F28B4  48 01 61 65 */	bl checkHookshotWait__9daAlink_cCFv
/* 800F28B8  2C 03 00 00 */	cmpwi r3, 0
/* 800F28BC  41 82 00 10 */	beq lbl_800F28CC
/* 800F28C0  7F E3 FB 78 */	mr r3, r31
/* 800F28C4  38 80 00 12 */	li r4, 0x12
/* 800F28C8  4B FC 09 89 */	bl setDoStatus__9daAlink_cFUc
lbl_800F28CC:
/* 800F28CC  7F E3 FB 78 */	mr r3, r31
/* 800F28D0  4B FF B1 55 */	bl setSyncRidePos__9daAlink_cFv
/* 800F28D4  2C 03 00 00 */	cmpwi r3, 0
/* 800F28D8  40 82 00 0C */	bne lbl_800F28E4
/* 800F28DC  38 60 00 01 */	li r3, 1
/* 800F28E0  48 00 00 40 */	b lbl_800F2920
lbl_800F28E4:
/* 800F28E4  7F E3 FB 78 */	mr r3, r31
/* 800F28E8  4B FF B4 85 */	bl checkHorseSpecialProc__9daAlink_cFv
/* 800F28EC  2C 03 00 00 */	cmpwi r3, 0
/* 800F28F0  41 82 00 0C */	beq lbl_800F28FC
/* 800F28F4  38 60 00 01 */	li r3, 1
/* 800F28F8  48 00 00 28 */	b lbl_800F2920
lbl_800F28FC:
/* 800F28FC  7F E3 FB 78 */	mr r3, r31
/* 800F2900  4B FF C4 99 */	bl setBaseRideAnime__9daAlink_cFv
/* 800F2904  7F E3 FB 78 */	mr r3, r31
/* 800F2908  4B FF CB 49 */	bl checkNextActionHorse__9daAlink_cFv
/* 800F290C  2C 03 00 00 */	cmpwi r3, 0
/* 800F2910  40 82 00 0C */	bne lbl_800F291C
/* 800F2914  7F E3 FB 78 */	mr r3, r31
/* 800F2918  4B FF C7 39 */	bl setBodyAngleRideReadyAnime__9daAlink_cFv
lbl_800F291C:
/* 800F291C  38 60 00 01 */	li r3, 1
lbl_800F2920:
/* 800F2920  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F2924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F2928  7C 08 03 A6 */	mtlr r0
/* 800F292C  38 21 00 10 */	addi r1, r1, 0x10
/* 800F2930  4E 80 00 20 */	blr 
