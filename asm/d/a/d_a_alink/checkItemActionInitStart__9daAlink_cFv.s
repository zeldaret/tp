lbl_800B6F28:
/* 800B6F28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B6F2C  7C 08 02 A6 */	mflr r0
/* 800B6F30  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B6F34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B6F38  7C 7F 1B 78 */	mr r31, r3
/* 800B6F3C  A0 83 2F DC */	lhz r4, 0x2fdc(r3)
/* 800B6F40  48 02 78 41 */	bl checkBowAndSlingItem__9daAlink_cFi
/* 800B6F44  2C 03 00 00 */	cmpwi r3, 0
/* 800B6F48  41 82 00 10 */	beq lbl_800B6F58
/* 800B6F4C  7F E3 FB 78 */	mr r3, r31
/* 800B6F50  48 02 88 C5 */	bl checkNextActionBow__9daAlink_cFv
/* 800B6F54  48 00 01 28 */	b lbl_800B707C
lbl_800B6F58:
/* 800B6F58  A0 7F 2F DC */	lhz r3, 0x2fdc(r31)
/* 800B6F5C  28 03 00 40 */	cmplwi r3, 0x40
/* 800B6F60  40 82 00 10 */	bne lbl_800B6F70
/* 800B6F64  7F E3 FB 78 */	mr r3, r31
/* 800B6F68  48 02 9C 7D */	bl checkNextActionBoomerang__9daAlink_cFv
/* 800B6F6C  48 00 01 10 */	b lbl_800B707C
lbl_800B6F70:
/* 800B6F70  28 03 00 46 */	cmplwi r3, 0x46
/* 800B6F74  40 82 00 40 */	bne lbl_800B6FB4
/* 800B6F78  80 1F 28 40 */	lwz r0, 0x2840(r31)
/* 800B6F7C  28 00 00 00 */	cmplwi r0, 0
/* 800B6F80  40 82 00 10 */	bne lbl_800B6F90
/* 800B6F84  7F E3 FB 78 */	mr r3, r31
/* 800B6F88  48 02 AC BD */	bl checkNextActionCopyRod__9daAlink_cFv
/* 800B6F8C  48 00 00 F0 */	b lbl_800B707C
lbl_800B6F90:
/* 800B6F90  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800B6F94  28 00 02 02 */	cmplwi r0, 0x202
/* 800B6F98  41 82 00 10 */	beq lbl_800B6FA8
/* 800B6F9C  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800B6FA0  28 00 00 65 */	cmplwi r0, 0x65
/* 800B6FA4  40 82 00 D4 */	bne lbl_800B7078
lbl_800B6FA8:
/* 800B6FA8  7F E3 FB 78 */	mr r3, r31
/* 800B6FAC  48 02 B1 1D */	bl procCopyRodSwingInit__9daAlink_cFv
/* 800B6FB0  48 00 00 CC */	b lbl_800B707C
lbl_800B6FB4:
/* 800B6FB4  48 0A 7A 6D */	bl checkFishingRodItem__9daPy_py_cFi
/* 800B6FB8  2C 03 00 00 */	cmpwi r3, 0
/* 800B6FBC  41 82 00 18 */	beq lbl_800B6FD4
/* 800B6FC0  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 800B6FC4  60 00 00 80 */	ori r0, r0, 0x80
/* 800B6FC8  90 1F 05 84 */	stw r0, 0x584(r31)
/* 800B6FCC  38 60 00 01 */	li r3, 1
/* 800B6FD0  48 00 00 AC */	b lbl_800B707C
lbl_800B6FD4:
/* 800B6FD4  A0 7F 2F DC */	lhz r3, 0x2fdc(r31)
/* 800B6FD8  28 03 00 42 */	cmplwi r3, 0x42
/* 800B6FDC  40 82 00 20 */	bne lbl_800B6FFC
/* 800B6FE0  7F E3 FB 78 */	mr r3, r31
/* 800B6FE4  48 05 E1 01 */	bl checkIronBallAnime__9daAlink_cCFv
/* 800B6FE8  2C 03 00 00 */	cmpwi r3, 0
/* 800B6FEC  40 82 00 8C */	bne lbl_800B7078
/* 800B6FF0  7F E3 FB 78 */	mr r3, r31
/* 800B6FF4  48 05 E4 05 */	bl checkNextActionIronBall__9daAlink_cFv
/* 800B6FF8  48 00 00 84 */	b lbl_800B707C
lbl_800B6FFC:
/* 800B6FFC  28 03 00 60 */	cmplwi r3, 0x60
/* 800B7000  40 82 00 18 */	bne lbl_800B7018
/* 800B7004  7F E3 FB 78 */	mr r3, r31
/* 800B7008  38 80 00 00 */	li r4, 0
/* 800B700C  38 A0 00 00 */	li r5, 0
/* 800B7010  48 05 8C 29 */	bl procBottleSwingInit__9daAlink_cFP10fopAc_ac_ci
/* 800B7014  48 00 00 68 */	b lbl_800B707C
lbl_800B7018:
/* 800B7018  28 03 00 48 */	cmplwi r3, 0x48
/* 800B701C  40 82 00 1C */	bne lbl_800B7038
/* 800B7020  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800B7024  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800B7028  40 82 00 50 */	bne lbl_800B7078
/* 800B702C  7F E3 FB 78 */	mr r3, r31
/* 800B7030  48 05 A4 11 */	bl procKandelaarSwingInit__9daAlink_cFv
/* 800B7034  48 00 00 48 */	b lbl_800B707C
lbl_800B7038:
/* 800B7038  48 0A 7B 81 */	bl checkHookshotItem__9daPy_py_cFi
/* 800B703C  2C 03 00 00 */	cmpwi r3, 0
/* 800B7040  41 82 00 38 */	beq lbl_800B7078
/* 800B7044  38 60 00 00 */	li r3, 0
/* 800B7048  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800B704C  28 00 01 8D */	cmplwi r0, 0x18d
/* 800B7050  41 82 00 10 */	beq lbl_800B7060
/* 800B7054  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800B7058  28 00 01 8C */	cmplwi r0, 0x18c
/* 800B705C  40 82 00 08 */	bne lbl_800B7064
lbl_800B7060:
/* 800B7060  38 60 00 01 */	li r3, 1
lbl_800B7064:
/* 800B7064  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B7068  40 82 00 10 */	bne lbl_800B7078
/* 800B706C  7F E3 FB 78 */	mr r3, r31
/* 800B7070  48 05 25 59 */	bl checkNextActionHookshot__9daAlink_cFv
/* 800B7074  48 00 00 08 */	b lbl_800B707C
lbl_800B7078:
/* 800B7078  38 60 FF FF */	li r3, -1
lbl_800B707C:
/* 800B707C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B7080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B7084  7C 08 03 A6 */	mtlr r0
/* 800B7088  38 21 00 10 */	addi r1, r1, 0x10
/* 800B708C  4E 80 00 20 */	blr 
