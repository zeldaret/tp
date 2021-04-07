lbl_80BB2C8C:
/* 80BB2C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB2C90  7C 08 02 A6 */	mflr r0
/* 80BB2C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB2C98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB2C9C  7C 7F 1B 78 */	mr r31, r3
/* 80BB2CA0  38 60 00 00 */	li r3, 0
/* 80BB2CA4  38 C0 00 01 */	li r6, 1
/* 80BB2CA8  7C 64 1B 78 */	mr r4, r3
/* 80BB2CAC  38 00 00 02 */	li r0, 2
/* 80BB2CB0  7C 09 03 A6 */	mtctr r0
lbl_80BB2CB4:
/* 80BB2CB4  38 E3 0F F8 */	addi r7, r3, 0xff8
/* 80BB2CB8  7C BF 38 2E */	lwzx r5, r31, r7
/* 80BB2CBC  28 05 00 00 */	cmplwi r5, 0
/* 80BB2CC0  41 82 00 28 */	beq lbl_80BB2CE8
/* 80BB2CC4  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80BB2CC8  60 00 00 01 */	ori r0, r0, 1
/* 80BB2CCC  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80BB2CD0  90 C5 00 24 */	stw r6, 0x24(r5)
/* 80BB2CD4  7C BF 38 2E */	lwzx r5, r31, r7
/* 80BB2CD8  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80BB2CDC  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BB2CE0  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80BB2CE4  7C 9F 39 2E */	stwx r4, r31, r7
lbl_80BB2CE8:
/* 80BB2CE8  38 63 00 04 */	addi r3, r3, 4
/* 80BB2CEC  42 00 FF C8 */	bdnz lbl_80BB2CB4
/* 80BB2CF0  80 7F 10 2C */	lwz r3, 0x102c(r31)
/* 80BB2CF4  28 03 00 00 */	cmplwi r3, 0
/* 80BB2CF8  41 82 00 30 */	beq lbl_80BB2D28
/* 80BB2CFC  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BB2D00  60 00 00 01 */	ori r0, r0, 1
/* 80BB2D04  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BB2D08  38 00 00 01 */	li r0, 1
/* 80BB2D0C  90 03 00 24 */	stw r0, 0x24(r3)
/* 80BB2D10  80 7F 10 2C */	lwz r3, 0x102c(r31)
/* 80BB2D14  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BB2D18  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BB2D1C  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BB2D20  38 00 00 00 */	li r0, 0
/* 80BB2D24  90 1F 10 2C */	stw r0, 0x102c(r31)
lbl_80BB2D28:
/* 80BB2D28  80 7F 10 30 */	lwz r3, 0x1030(r31)
/* 80BB2D2C  28 03 00 00 */	cmplwi r3, 0
/* 80BB2D30  41 82 00 30 */	beq lbl_80BB2D60
/* 80BB2D34  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BB2D38  60 00 00 01 */	ori r0, r0, 1
/* 80BB2D3C  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BB2D40  38 00 00 01 */	li r0, 1
/* 80BB2D44  90 03 00 24 */	stw r0, 0x24(r3)
/* 80BB2D48  80 7F 10 30 */	lwz r3, 0x1030(r31)
/* 80BB2D4C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BB2D50  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BB2D54  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BB2D58  38 00 00 00 */	li r0, 0
/* 80BB2D5C  90 1F 10 30 */	stw r0, 0x1030(r31)
lbl_80BB2D60:
/* 80BB2D60  80 7F 10 34 */	lwz r3, 0x1034(r31)
/* 80BB2D64  28 03 00 00 */	cmplwi r3, 0
/* 80BB2D68  41 82 00 30 */	beq lbl_80BB2D98
/* 80BB2D6C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BB2D70  60 00 00 01 */	ori r0, r0, 1
/* 80BB2D74  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BB2D78  38 00 00 01 */	li r0, 1
/* 80BB2D7C  90 03 00 24 */	stw r0, 0x24(r3)
/* 80BB2D80  80 7F 10 34 */	lwz r3, 0x1034(r31)
/* 80BB2D84  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BB2D88  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BB2D8C  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BB2D90  38 00 00 00 */	li r0, 0
/* 80BB2D94  90 1F 10 34 */	stw r0, 0x1034(r31)
lbl_80BB2D98:
/* 80BB2D98  38 60 00 00 */	li r3, 0
/* 80BB2D9C  38 00 00 02 */	li r0, 2
/* 80BB2DA0  7C 09 03 A6 */	mtctr r0
lbl_80BB2DA4:
/* 80BB2DA4  7C BF 1A 14 */	add r5, r31, r3
/* 80BB2DA8  80 85 10 10 */	lwz r4, 0x1010(r5)
/* 80BB2DAC  28 04 00 00 */	cmplwi r4, 0
/* 80BB2DB0  41 82 00 30 */	beq lbl_80BB2DE0
/* 80BB2DB4  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80BB2DB8  60 00 00 01 */	ori r0, r0, 1
/* 80BB2DBC  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80BB2DC0  38 00 00 01 */	li r0, 1
/* 80BB2DC4  90 04 00 24 */	stw r0, 0x24(r4)
/* 80BB2DC8  80 85 10 10 */	lwz r4, 0x1010(r5)
/* 80BB2DCC  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80BB2DD0  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BB2DD4  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80BB2DD8  38 00 00 00 */	li r0, 0
/* 80BB2DDC  90 05 10 10 */	stw r0, 0x1010(r5)
lbl_80BB2DE0:
/* 80BB2DE0  80 85 10 18 */	lwz r4, 0x1018(r5)
/* 80BB2DE4  28 04 00 00 */	cmplwi r4, 0
/* 80BB2DE8  41 82 00 30 */	beq lbl_80BB2E18
/* 80BB2DEC  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80BB2DF0  60 00 00 01 */	ori r0, r0, 1
/* 80BB2DF4  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80BB2DF8  38 00 00 01 */	li r0, 1
/* 80BB2DFC  90 04 00 24 */	stw r0, 0x24(r4)
/* 80BB2E00  80 85 10 18 */	lwz r4, 0x1018(r5)
/* 80BB2E04  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80BB2E08  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BB2E0C  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80BB2E10  38 00 00 00 */	li r0, 0
/* 80BB2E14  90 05 10 18 */	stw r0, 0x1018(r5)
lbl_80BB2E18:
/* 80BB2E18  38 63 00 04 */	addi r3, r3, 4
/* 80BB2E1C  42 00 FF 88 */	bdnz lbl_80BB2DA4
/* 80BB2E20  38 60 00 00 */	li r3, 0
/* 80BB2E24  38 C0 00 01 */	li r6, 1
/* 80BB2E28  38 80 00 00 */	li r4, 0
/* 80BB2E2C  38 00 00 03 */	li r0, 3
/* 80BB2E30  7C 09 03 A6 */	mtctr r0
lbl_80BB2E34:
/* 80BB2E34  38 E3 10 20 */	addi r7, r3, 0x1020
/* 80BB2E38  7C BF 38 2E */	lwzx r5, r31, r7
/* 80BB2E3C  28 05 00 00 */	cmplwi r5, 0
/* 80BB2E40  41 82 00 28 */	beq lbl_80BB2E68
/* 80BB2E44  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80BB2E48  60 00 00 01 */	ori r0, r0, 1
/* 80BB2E4C  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80BB2E50  90 C5 00 24 */	stw r6, 0x24(r5)
/* 80BB2E54  7C BF 38 2E */	lwzx r5, r31, r7
/* 80BB2E58  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80BB2E5C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BB2E60  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80BB2E64  7C 9F 39 2E */	stwx r4, r31, r7
lbl_80BB2E68:
/* 80BB2E68  38 63 00 04 */	addi r3, r3, 4
/* 80BB2E6C  42 00 FF C8 */	bdnz lbl_80BB2E34
/* 80BB2E70  38 00 00 00 */	li r0, 0
/* 80BB2E74  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80BB2E78  90 03 00 10 */	stw r0, 0x10(r3)
/* 80BB2E7C  38 7F 10 60 */	addi r3, r31, 0x1060
/* 80BB2E80  4B 70 B1 79 */	bl deleteObject__14Z2SoundObjBaseFv
/* 80BB2E84  38 7F 10 80 */	addi r3, r31, 0x1080
/* 80BB2E88  4B 70 B1 71 */	bl deleteObject__14Z2SoundObjBaseFv
/* 80BB2E8C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BB2E90  3C 80 80 BB */	lis r4, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BB2E94  38 84 3A 94 */	addi r4, r4, l_arcName@l /* 0x80BB3A94@l */
/* 80BB2E98  80 84 00 00 */	lwz r4, 0(r4)
/* 80BB2E9C  4B 47 A1 6D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BB2EA0  38 60 00 01 */	li r3, 1
/* 80BB2EA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB2EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB2EAC  7C 08 03 A6 */	mtlr r0
/* 80BB2EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB2EB4  4E 80 00 20 */	blr 
