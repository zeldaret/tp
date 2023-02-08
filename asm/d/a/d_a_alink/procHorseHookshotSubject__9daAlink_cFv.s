lbl_800F2770:
/* 800F2770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F2774  7C 08 02 A6 */	mflr r0
/* 800F2778  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F277C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F2780  7C 7F 1B 78 */	mr r31, r3
/* 800F2784  48 01 62 95 */	bl checkHookshotWait__9daAlink_cCFv
/* 800F2788  2C 03 00 00 */	cmpwi r3, 0
/* 800F278C  41 82 00 10 */	beq lbl_800F279C
/* 800F2790  7F E3 FB 78 */	mr r3, r31
/* 800F2794  38 80 00 12 */	li r4, 0x12
/* 800F2798  4B FC 0A B9 */	bl setDoStatus__9daAlink_cFUc
lbl_800F279C:
/* 800F279C  7F E3 FB 78 */	mr r3, r31
/* 800F27A0  4B FF B2 85 */	bl setSyncRidePos__9daAlink_cFv
/* 800F27A4  2C 03 00 00 */	cmpwi r3, 0
/* 800F27A8  40 82 00 0C */	bne lbl_800F27B4
/* 800F27AC  38 60 00 01 */	li r3, 1
/* 800F27B0  48 00 00 60 */	b lbl_800F2810
lbl_800F27B4:
/* 800F27B4  7F E3 FB 78 */	mr r3, r31
/* 800F27B8  4B FF B5 B5 */	bl checkHorseSpecialProc__9daAlink_cFv
/* 800F27BC  2C 03 00 00 */	cmpwi r3, 0
/* 800F27C0  41 82 00 0C */	beq lbl_800F27CC
/* 800F27C4  38 60 00 01 */	li r3, 1
/* 800F27C8  48 00 00 48 */	b lbl_800F2810
lbl_800F27CC:
/* 800F27CC  7F E3 FB 78 */	mr r3, r31
/* 800F27D0  4B FF C5 C9 */	bl setBaseRideAnime__9daAlink_cFv
/* 800F27D4  7F E3 FB 78 */	mr r3, r31
/* 800F27D8  4B FF CC 79 */	bl checkNextActionHorse__9daAlink_cFv
/* 800F27DC  2C 03 00 00 */	cmpwi r3, 0
/* 800F27E0  40 82 00 24 */	bne lbl_800F2804
/* 800F27E4  7F E3 FB 78 */	mr r3, r31
/* 800F27E8  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 800F27EC  4B FF C7 45 */	bl setRideSubjectAngle__9daAlink_cFs
/* 800F27F0  2C 03 00 00 */	cmpwi r3, 0
/* 800F27F4  41 82 00 18 */	beq lbl_800F280C
/* 800F27F8  7F E3 FB 78 */	mr r3, r31
/* 800F27FC  48 01 65 B9 */	bl setHookshotSight__9daAlink_cFv
/* 800F2800  48 00 00 0C */	b lbl_800F280C
lbl_800F2804:
/* 800F2804  38 00 00 00 */	li r0, 0
/* 800F2808  98 1F 20 68 */	stb r0, 0x2068(r31)
lbl_800F280C:
/* 800F280C  38 60 00 01 */	li r3, 1
lbl_800F2810:
/* 800F2810  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F2814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F2818  7C 08 03 A6 */	mtlr r0
/* 800F281C  38 21 00 10 */	addi r1, r1, 0x10
/* 800F2820  4E 80 00 20 */	blr 
