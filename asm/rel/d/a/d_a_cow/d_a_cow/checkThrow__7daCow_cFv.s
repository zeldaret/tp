lbl_80658DB8:
/* 80658DB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80658DBC  7C 08 02 A6 */	mflr r0
/* 80658DC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80658DC4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80658DC8  7C 7F 1B 78 */	mr r31, r3
/* 80658DCC  A0 83 05 68 */	lhz r4, 0x568(r3)
/* 80658DD0  28 04 00 00 */	cmplwi r4, 0
/* 80658DD4  41 82 00 AC */	beq lbl_80658E80
/* 80658DD8  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80658DDC  41 82 00 50 */	beq lbl_80658E2C
/* 80658DE0  3C 80 80 66 */	lis r4, lit_4181@ha
/* 80658DE4  38 A4 30 24 */	addi r5, r4, lit_4181@l
/* 80658DE8  80 85 00 00 */	lwz r4, 0(r5)
/* 80658DEC  80 05 00 04 */	lwz r0, 4(r5)
/* 80658DF0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80658DF4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80658DF8  80 05 00 08 */	lwz r0, 8(r5)
/* 80658DFC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80658E00  38 81 00 14 */	addi r4, r1, 0x14
/* 80658E04  38 A0 00 00 */	li r5, 0
/* 80658E08  48 00 03 0D */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 80658E0C  7F E3 FB 78 */	mr r3, r31
/* 80658E10  38 80 00 00 */	li r4, 0
/* 80658E14  48 00 58 A9 */	bl initCrazyBeforeCatch__7daCow_cFi
/* 80658E18  A0 1F 05 68 */	lhz r0, 0x568(r31)
/* 80658E1C  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 80658E20  B0 1F 05 68 */	sth r0, 0x568(r31)
/* 80658E24  38 60 00 01 */	li r3, 1
/* 80658E28  48 00 00 5C */	b lbl_80658E84
lbl_80658E2C:
/* 80658E2C  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 80658E30  41 82 00 50 */	beq lbl_80658E80
/* 80658E34  3C 80 80 66 */	lis r4, lit_4186@ha
/* 80658E38  38 A4 30 30 */	addi r5, r4, lit_4186@l
/* 80658E3C  80 85 00 00 */	lwz r4, 0(r5)
/* 80658E40  80 05 00 04 */	lwz r0, 4(r5)
/* 80658E44  90 81 00 08 */	stw r4, 8(r1)
/* 80658E48  90 01 00 0C */	stw r0, 0xc(r1)
/* 80658E4C  80 05 00 08 */	lwz r0, 8(r5)
/* 80658E50  90 01 00 10 */	stw r0, 0x10(r1)
/* 80658E54  38 81 00 08 */	addi r4, r1, 8
/* 80658E58  38 A0 00 00 */	li r5, 0
/* 80658E5C  48 00 02 B9 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 80658E60  7F E3 FB 78 */	mr r3, r31
/* 80658E64  38 80 00 00 */	li r4, 0
/* 80658E68  48 00 59 69 */	bl initCrazyCatch__7daCow_cFi
/* 80658E6C  A0 1F 05 68 */	lhz r0, 0x568(r31)
/* 80658E70  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80658E74  B0 1F 05 68 */	sth r0, 0x568(r31)
/* 80658E78  38 60 00 01 */	li r3, 1
/* 80658E7C  48 00 00 08 */	b lbl_80658E84
lbl_80658E80:
/* 80658E80  38 60 00 00 */	li r3, 0
lbl_80658E84:
/* 80658E84  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80658E88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80658E8C  7C 08 03 A6 */	mtlr r0
/* 80658E90  38 21 00 30 */	addi r1, r1, 0x30
/* 80658E94  4E 80 00 20 */	blr 
