lbl_800C2EAC:
/* 800C2EAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C2EB0  7C 08 02 A6 */	mflr r0
/* 800C2EB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C2EB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C2EBC  7C 7F 1B 78 */	mr r31, r3
/* 800C2EC0  4B FF 63 95 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800C2EC4  2C 03 00 00 */	cmpwi r3, 0
/* 800C2EC8  41 82 01 AC */	beq lbl_800C3074
/* 800C2ECC  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800C2ED0  2C 00 00 00 */	cmpwi r0, 0
/* 800C2ED4  41 82 00 28 */	beq lbl_800C2EFC
/* 800C2ED8  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 800C2EDC  28 03 00 00 */	cmplwi r3, 0
/* 800C2EE0  41 82 00 10 */	beq lbl_800C2EF0
/* 800C2EE4  80 1F 28 10 */	lwz r0, 0x2810(r31)
/* 800C2EE8  7C 03 00 40 */	cmplw r3, r0
/* 800C2EEC  41 82 00 10 */	beq lbl_800C2EFC
lbl_800C2EF0:
/* 800C2EF0  7F E3 FB 78 */	mr r3, r31
/* 800C2EF4  4B FF 29 F9 */	bl checkWaitAction__9daAlink_cFv
/* 800C2EF8  48 00 01 88 */	b lbl_800C3080
lbl_800C2EFC:
/* 800C2EFC  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 800C2F00  2C 00 01 43 */	cmpwi r0, 0x143
/* 800C2F04  40 82 00 14 */	bne lbl_800C2F18
/* 800C2F08  7F E3 FB 78 */	mr r3, r31
/* 800C2F0C  38 80 00 01 */	li r4, 1
/* 800C2F10  48 02 55 19 */	bl procCoPushPullWaitInit__9daAlink_cFi
/* 800C2F14  48 00 01 6C */	b lbl_800C3080
lbl_800C2F18:
/* 800C2F18  2C 00 00 69 */	cmpwi r0, 0x69
/* 800C2F1C  40 82 00 10 */	bne lbl_800C2F2C
/* 800C2F20  7F E3 FB 78 */	mr r3, r31
/* 800C2F24  48 03 AA A9 */	bl procLadderDownStartInit__9daAlink_cFv
/* 800C2F28  48 00 01 58 */	b lbl_800C3080
lbl_800C2F2C:
/* 800C2F2C  2C 00 00 67 */	cmpwi r0, 0x67
/* 800C2F30  40 82 00 10 */	bne lbl_800C2F40
/* 800C2F34  7F E3 FB 78 */	mr r3, r31
/* 800C2F38  48 03 A7 11 */	bl procLadderUpStartInit__9daAlink_cFv
/* 800C2F3C  48 00 01 44 */	b lbl_800C3080
lbl_800C2F40:
/* 800C2F40  2C 00 00 6C */	cmpwi r0, 0x6c
/* 800C2F44  40 82 00 10 */	bne lbl_800C2F54
/* 800C2F48  7F E3 FB 78 */	mr r3, r31
/* 800C2F4C  48 02 2D 71 */	bl procGrabReadyInit__9daAlink_cFv
/* 800C2F50  48 00 01 30 */	b lbl_800C3080
lbl_800C2F54:
/* 800C2F54  2C 00 01 48 */	cmpwi r0, 0x148
/* 800C2F58  40 82 00 10 */	bne lbl_800C2F68
/* 800C2F5C  7F E3 FB 78 */	mr r3, r31
/* 800C2F60  48 05 78 39 */	bl procCoGetItemInit__9daAlink_cFv
/* 800C2F64  48 00 01 1C */	b lbl_800C3080
lbl_800C2F68:
/* 800C2F68  2C 00 01 57 */	cmpwi r0, 0x157
/* 800C2F6C  40 82 00 10 */	bne lbl_800C2F7C
/* 800C2F70  7F E3 FB 78 */	mr r3, r31
/* 800C2F74  48 05 A5 D1 */	bl procCoGetReadySitInit__9daAlink_cFv
/* 800C2F78  48 00 01 08 */	b lbl_800C3080
lbl_800C2F7C:
/* 800C2F7C  2C 00 00 AE */	cmpwi r0, 0xae
/* 800C2F80  40 82 00 10 */	bne lbl_800C2F90
/* 800C2F84  7F E3 FB 78 */	mr r3, r31
/* 800C2F88  48 02 4C A9 */	bl procFmChainUpInit__9daAlink_cFv
/* 800C2F8C  48 00 00 F4 */	b lbl_800C3080
lbl_800C2F90:
/* 800C2F90  2C 00 00 75 */	cmpwi r0, 0x75
/* 800C2F94  40 82 00 10 */	bne lbl_800C2FA4
/* 800C2F98  7F E3 FB 78 */	mr r3, r31
/* 800C2F9C  48 02 42 B9 */	bl procPickUpInit__9daAlink_cFv
/* 800C2FA0  48 00 00 E0 */	b lbl_800C3080
lbl_800C2FA4:
/* 800C2FA4  2C 00 00 35 */	cmpwi r0, 0x35
/* 800C2FA8  40 82 00 10 */	bne lbl_800C2FB8
/* 800C2FAC  7F E3 FB 78 */	mr r3, r31
/* 800C2FB0  48 03 62 61 */	bl procCrawlStartInit__9daAlink_cFv
/* 800C2FB4  48 00 00 CC */	b lbl_800C3080
lbl_800C2FB8:
/* 800C2FB8  2C 00 00 B9 */	cmpwi r0, 0xb9
/* 800C2FBC  40 82 00 10 */	bne lbl_800C2FCC
/* 800C2FC0  7F E3 FB 78 */	mr r3, r31
/* 800C2FC4  48 04 E8 D1 */	bl procGrassWhistleGetInit__9daAlink_cFv
/* 800C2FC8  48 00 00 B8 */	b lbl_800C3080
lbl_800C2FCC:
/* 800C2FCC  2C 00 00 C1 */	cmpwi r0, 0xc1
/* 800C2FD0  40 82 00 10 */	bne lbl_800C2FE0
/* 800C2FD4  7F E3 FB 78 */	mr r3, r31
/* 800C2FD8  48 02 72 D1 */	bl procGoatStrokeInit__9daAlink_cFv
/* 800C2FDC  48 00 00 A4 */	b lbl_800C3080
lbl_800C2FE0:
/* 800C2FE0  2C 00 00 5C */	cmpwi r0, 0x5c
/* 800C2FE4  40 82 00 10 */	bne lbl_800C2FF4
/* 800C2FE8  7F E3 FB 78 */	mr r3, r31
/* 800C2FEC  48 03 91 8D */	bl procHangReadyInit__9daAlink_cFv
/* 800C2FF0  48 00 00 90 */	b lbl_800C3080
lbl_800C2FF4:
/* 800C2FF4  2C 00 00 74 */	cmpwi r0, 0x74
/* 800C2FF8  40 82 00 10 */	bne lbl_800C3008
/* 800C2FFC  7F E3 FB 78 */	mr r3, r31
/* 800C3000  48 02 40 FD */	bl procInsectCatchInit__9daAlink_cFv
/* 800C3004  48 00 00 7C */	b lbl_800C3080
lbl_800C3008:
/* 800C3008  2C 00 00 C2 */	cmpwi r0, 0xc2
/* 800C300C  40 82 00 10 */	bne lbl_800C301C
/* 800C3010  7F E3 FB 78 */	mr r3, r31
/* 800C3014  48 02 73 E1 */	bl procGoronMoveInit__9daAlink_cFv
/* 800C3018  48 00 00 68 */	b lbl_800C3080
lbl_800C301C:
/* 800C301C  2C 00 00 B5 */	cmpwi r0, 0xb5
/* 800C3020  40 82 00 18 */	bne lbl_800C3038
/* 800C3024  7F E3 FB 78 */	mr r3, r31
/* 800C3028  38 80 00 00 */	li r4, 0
/* 800C302C  38 A0 00 00 */	li r5, 0
/* 800C3030  48 04 CC 09 */	bl procBottleSwingInit__9daAlink_cFP10fopAc_ac_ci
/* 800C3034  48 00 00 4C */	b lbl_800C3080
lbl_800C3038:
/* 800C3038  2C 00 00 5D */	cmpwi r0, 0x5d
/* 800C303C  40 82 00 10 */	bne lbl_800C304C
/* 800C3040  7F E3 FB 78 */	mr r3, r31
/* 800C3044  48 03 92 B1 */	bl procHangLeverDownInit__9daAlink_cFv
/* 800C3048  48 00 00 38 */	b lbl_800C3080
lbl_800C304C:
/* 800C304C  2C 00 00 76 */	cmpwi r0, 0x76
/* 800C3050  40 82 00 14 */	bne lbl_800C3064
/* 800C3054  7F E3 FB 78 */	mr r3, r31
/* 800C3058  38 80 00 01 */	li r4, 1
/* 800C305C  48 02 45 91 */	bl procPickPutInit__9daAlink_cFi
/* 800C3060  48 00 00 20 */	b lbl_800C3080
lbl_800C3064:
/* 800C3064  7F E3 FB 78 */	mr r3, r31
/* 800C3068  38 80 00 00 */	li r4, 0
/* 800C306C  4B FF 70 65 */	bl checkNextAction__9daAlink_cFi
/* 800C3070  48 00 00 10 */	b lbl_800C3080
lbl_800C3074:
/* 800C3074  7F E3 FB 78 */	mr r3, r31
/* 800C3078  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800C307C  4B FE AD 99 */	bl setBlendMoveAnime__9daAlink_cFf
lbl_800C3080:
/* 800C3080  38 60 00 01 */	li r3, 1
/* 800C3084  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C3088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C308C  7C 08 03 A6 */	mtlr r0
/* 800C3090  38 21 00 10 */	addi r1, r1, 0x10
/* 800C3094  4E 80 00 20 */	blr 
