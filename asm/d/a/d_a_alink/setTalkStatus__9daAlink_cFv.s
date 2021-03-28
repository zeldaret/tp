lbl_800B4A08:
/* 800B4A08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B4A0C  7C 08 02 A6 */	mflr r0
/* 800B4A10  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B4A14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B4A18  7C 7F 1B 78 */	mr r31, r3
/* 800B4A1C  80 03 05 88 */	lwz r0, 0x588(r3)
/* 800B4A20  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 800B4A24  40 82 00 10 */	bne lbl_800B4A34
/* 800B4A28  80 BF 27 F4 */	lwz r5, 0x27f4(r31)
/* 800B4A2C  28 05 00 00 */	cmplwi r5, 0
/* 800B4A30  40 82 00 0C */	bne lbl_800B4A3C
lbl_800B4A34:
/* 800B4A34  38 60 00 00 */	li r3, 0
/* 800B4A38  48 00 00 E0 */	b lbl_800B4B18
lbl_800B4A3C:
/* 800B4A3C  80 9F 27 E4 */	lwz r4, 0x27e4(r31)
/* 800B4A40  4B FF FD 3D */	bl checkRequestTalkActor__9daAlink_cFP10dAttList_cP10fopAc_ac_c
/* 800B4A44  2C 03 00 00 */	cmpwi r3, 0
/* 800B4A48  41 82 00 CC */	beq lbl_800B4B14
/* 800B4A4C  7F E3 FB 78 */	mr r3, r31
/* 800B4A50  4B FF FF 01 */	bl notTalk__9daAlink_cFv
/* 800B4A54  2C 03 00 00 */	cmpwi r3, 0
/* 800B4A58  41 82 00 14 */	beq lbl_800B4A6C
/* 800B4A5C  7F E3 FB 78 */	mr r3, r31
/* 800B4A60  38 80 00 90 */	li r4, 0x90
/* 800B4A64  4B FF E7 ED */	bl setDoStatus__9daAlink_cFUc
/* 800B4A68  48 00 00 A4 */	b lbl_800B4B0C
lbl_800B4A6C:
/* 800B4A6C  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 800B4A70  80 64 05 5C */	lwz r3, 0x55c(r4)
/* 800B4A74  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 800B4A78  41 82 00 0C */	beq lbl_800B4A84
/* 800B4A7C  38 60 00 00 */	li r3, 0
/* 800B4A80  48 00 00 98 */	b lbl_800B4B18
lbl_800B4A84:
/* 800B4A84  54 60 02 11 */	rlwinm. r0, r3, 0, 8, 8
/* 800B4A88  41 82 00 14 */	beq lbl_800B4A9C
/* 800B4A8C  7F E3 FB 78 */	mr r3, r31
/* 800B4A90  38 80 00 3B */	li r4, 0x3b
/* 800B4A94  4B FF E7 BD */	bl setDoStatus__9daAlink_cFUc
/* 800B4A98  48 00 00 74 */	b lbl_800B4B0C
lbl_800B4A9C:
/* 800B4A9C  54 60 00 85 */	rlwinm. r0, r3, 0, 2, 2
/* 800B4AA0  41 82 00 30 */	beq lbl_800B4AD0
/* 800B4AA4  A8 04 00 08 */	lha r0, 8(r4)
/* 800B4AA8  2C 00 01 20 */	cmpwi r0, 0x120
/* 800B4AAC  40 82 00 14 */	bne lbl_800B4AC0
/* 800B4AB0  7F E3 FB 78 */	mr r3, r31
/* 800B4AB4  38 80 00 3C */	li r4, 0x3c
/* 800B4AB8  4B FF E7 99 */	bl setDoStatus__9daAlink_cFUc
/* 800B4ABC  48 00 00 50 */	b lbl_800B4B0C
lbl_800B4AC0:
/* 800B4AC0  7F E3 FB 78 */	mr r3, r31
/* 800B4AC4  38 80 00 08 */	li r4, 8
/* 800B4AC8  4B FF E7 89 */	bl setDoStatus__9daAlink_cFUc
/* 800B4ACC  48 00 00 40 */	b lbl_800B4B0C
lbl_800B4AD0:
/* 800B4AD0  54 60 00 43 */	rlwinm. r0, r3, 0, 1, 1
/* 800B4AD4  41 82 00 14 */	beq lbl_800B4AE8
/* 800B4AD8  7F E3 FB 78 */	mr r3, r31
/* 800B4ADC  38 80 00 80 */	li r4, 0x80
/* 800B4AE0  4B FF E7 71 */	bl setDoStatus__9daAlink_cFUc
/* 800B4AE4  48 00 00 28 */	b lbl_800B4B0C
lbl_800B4AE8:
/* 800B4AE8  54 60 01 09 */	rlwinm. r0, r3, 0, 4, 4
/* 800B4AEC  41 82 00 14 */	beq lbl_800B4B00
/* 800B4AF0  7F E3 FB 78 */	mr r3, r31
/* 800B4AF4  38 80 00 1B */	li r4, 0x1b
/* 800B4AF8  4B FF E7 59 */	bl setDoStatus__9daAlink_cFUc
/* 800B4AFC  48 00 00 10 */	b lbl_800B4B0C
lbl_800B4B00:
/* 800B4B00  7F E3 FB 78 */	mr r3, r31
/* 800B4B04  38 80 00 1C */	li r4, 0x1c
/* 800B4B08  4B FF E7 49 */	bl setDoStatus__9daAlink_cFUc
lbl_800B4B0C:
/* 800B4B0C  38 60 00 01 */	li r3, 1
/* 800B4B10  48 00 00 08 */	b lbl_800B4B18
lbl_800B4B14:
/* 800B4B14  38 60 00 00 */	li r3, 0
lbl_800B4B18:
/* 800B4B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B4B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B4B20  7C 08 03 A6 */	mtlr r0
/* 800B4B24  38 21 00 10 */	addi r1, r1, 0x10
/* 800B4B28  4E 80 00 20 */	blr 
