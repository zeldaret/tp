lbl_80AB4674:
/* 80AB4674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB4678  7C 08 02 A6 */	mflr r0
/* 80AB467C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB4680  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB4684  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB4688  7C 7E 1B 78 */	mr r30, r3
/* 80AB468C  3C 80 80 AB */	lis r4, m__17daNpcPray_Param_c@ha /* 0x80AB5808@ha */
/* 80AB4690  3B E4 58 08 */	addi r31, r4, m__17daNpcPray_Param_c@l /* 0x80AB5808@l */
/* 80AB4694  A0 03 0E 0C */	lhz r0, 0xe0c(r3)
/* 80AB4698  2C 00 00 02 */	cmpwi r0, 2
/* 80AB469C  41 82 00 68 */	beq lbl_80AB4704
/* 80AB46A0  40 80 00 84 */	bge lbl_80AB4724
/* 80AB46A4  2C 00 00 00 */	cmpwi r0, 0
/* 80AB46A8  41 82 00 0C */	beq lbl_80AB46B4
/* 80AB46AC  48 00 00 78 */	b lbl_80AB4724
/* 80AB46B0  48 00 00 74 */	b lbl_80AB4724
lbl_80AB46B4:
/* 80AB46B4  38 80 00 03 */	li r4, 3
/* 80AB46B8  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80AB46BC  38 A0 00 00 */	li r5, 0
/* 80AB46C0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80AB46C4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AB46C8  7D 89 03 A6 */	mtctr r12
/* 80AB46CC  4E 80 04 21 */	bctrl 
/* 80AB46D0  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80AB46D4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80AB46D8  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80AB46DC  38 80 00 02 */	li r4, 2
/* 80AB46E0  4B 80 C7 39 */	bl playVoice__17Z2CreatureCitizenFi
/* 80AB46E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AB46E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AB46EC  38 63 09 78 */	addi r3, r3, 0x978
/* 80AB46F0  38 80 00 3C */	li r4, 0x3c
/* 80AB46F4  4B 58 04 A5 */	bl onSwitch__12dSv_danBit_cFi
/* 80AB46F8  38 00 00 02 */	li r0, 2
/* 80AB46FC  B0 1E 0E 0C */	sth r0, 0xe0c(r30)
/* 80AB4700  48 00 00 24 */	b lbl_80AB4724
lbl_80AB4704:
/* 80AB4704  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AB4708  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80AB470C  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80AB4710  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80AB4714  40 82 00 10 */	bne lbl_80AB4724
/* 80AB4718  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80AB471C  38 80 00 02 */	li r4, 2
/* 80AB4720  4B 80 C6 F9 */	bl playVoice__17Z2CreatureCitizenFi
lbl_80AB4724:
/* 80AB4724  38 60 00 01 */	li r3, 1
/* 80AB4728  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB472C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB4730  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB4734  7C 08 03 A6 */	mtlr r0
/* 80AB4738  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB473C  4E 80 00 20 */	blr 
