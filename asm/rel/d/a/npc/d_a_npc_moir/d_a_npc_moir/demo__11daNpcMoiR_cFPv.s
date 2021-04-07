lbl_80A7F9AC:
/* 80A7F9AC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A7F9B0  7C 08 02 A6 */	mflr r0
/* 80A7F9B4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A7F9B8  39 61 00 70 */	addi r11, r1, 0x70
/* 80A7F9BC  4B 8E 28 19 */	bl _savegpr_27
/* 80A7F9C0  7C 7D 1B 78 */	mr r29, r3
/* 80A7F9C4  3C 80 80 A8 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A838B0@ha */
/* 80A7F9C8  3B E4 38 B0 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80A838B0@l */
/* 80A7F9CC  3B C0 00 00 */	li r30, 0
/* 80A7F9D0  A0 03 0E 08 */	lhz r0, 0xe08(r3)
/* 80A7F9D4  2C 00 00 02 */	cmpwi r0, 2
/* 80A7F9D8  41 82 00 60 */	beq lbl_80A7FA38
/* 80A7F9DC  40 80 04 F0 */	bge lbl_80A7FECC
/* 80A7F9E0  2C 00 00 00 */	cmpwi r0, 0
/* 80A7F9E4  41 82 00 0C */	beq lbl_80A7F9F0
/* 80A7F9E8  48 00 04 E4 */	b lbl_80A7FECC
/* 80A7F9EC  48 00 04 E0 */	b lbl_80A7FECC
lbl_80A7F9F0:
/* 80A7F9F0  38 80 00 12 */	li r4, 0x12
/* 80A7F9F4  3C A0 80 A8 */	lis r5, lit_4960@ha /* 0x80A83790@ha */
/* 80A7F9F8  C0 25 37 90 */	lfs f1, lit_4960@l(r5)  /* 0x80A83790@l */
/* 80A7F9FC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A7FA00  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7FA04  7D 89 03 A6 */	mtctr r12
/* 80A7FA08  4E 80 04 21 */	bctrl 
/* 80A7FA0C  7F A3 EB 78 */	mr r3, r29
/* 80A7FA10  38 80 00 07 */	li r4, 7
/* 80A7FA14  3C A0 80 A8 */	lis r5, lit_4960@ha /* 0x80A83790@ha */
/* 80A7FA18  C0 25 37 90 */	lfs f1, lit_4960@l(r5)  /* 0x80A83790@l */
/* 80A7FA1C  38 A0 00 00 */	li r5, 0
/* 80A7FA20  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7FA24  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7FA28  7D 89 03 A6 */	mtctr r12
/* 80A7FA2C  4E 80 04 21 */	bctrl 
/* 80A7FA30  38 00 00 02 */	li r0, 2
/* 80A7FA34  B0 1D 0E 08 */	sth r0, 0xe08(r29)
lbl_80A7FA38:
/* 80A7FA38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A7FA3C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A7FA40  88 1C 4F AD */	lbz r0, 0x4fad(r28)
/* 80A7FA44  28 00 00 00 */	cmplwi r0, 0
/* 80A7FA48  41 82 02 AC */	beq lbl_80A7FCF4
/* 80A7FA4C  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80A7FA50  28 00 00 01 */	cmplwi r0, 1
/* 80A7FA54  41 82 02 A0 */	beq lbl_80A7FCF4
/* 80A7FA58  3B 7C 4F F8 */	addi r27, r28, 0x4ff8
/* 80A7FA5C  7F 63 DB 78 */	mr r3, r27
/* 80A7FA60  80 9F 02 68 */	lwz r4, 0x268(r31)
/* 80A7FA64  38 A0 00 00 */	li r5, 0
/* 80A7FA68  38 C0 00 00 */	li r6, 0
/* 80A7FA6C  4B 5C 80 B1 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A7FA70  2C 03 FF FF */	cmpwi r3, -1
/* 80A7FA74  41 82 00 74 */	beq lbl_80A7FAE8
/* 80A7FA78  7C 7E 1B 78 */	mr r30, r3
/* 80A7FA7C  93 DD 09 2C */	stw r30, 0x92c(r29)
/* 80A7FA80  7F 63 DB 78 */	mr r3, r27
/* 80A7FA84  7F C4 F3 78 */	mr r4, r30
/* 80A7FA88  38 BF 02 58 */	addi r5, r31, 0x258
/* 80A7FA8C  38 C0 00 04 */	li r6, 4
/* 80A7FA90  38 E0 00 00 */	li r7, 0
/* 80A7FA94  39 00 00 00 */	li r8, 0
/* 80A7FA98  4B 5C 83 79 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80A7FA9C  2C 03 00 00 */	cmpwi r3, 0
/* 80A7FAA0  40 81 00 10 */	ble lbl_80A7FAB0
/* 80A7FAA4  2C 03 00 04 */	cmpwi r3, 4
/* 80A7FAA8  40 80 00 08 */	bge lbl_80A7FAB0
/* 80A7FAAC  B0 7D 09 E6 */	sth r3, 0x9e6(r29)
lbl_80A7FAB0:
/* 80A7FAB0  7F A3 EB 78 */	mr r3, r29
/* 80A7FAB4  7F C4 F3 78 */	mr r4, r30
/* 80A7FAB8  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80A7FABC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80A7FAC0  39 9F 02 90 */	addi r12, r31, 0x290
/* 80A7FAC4  7D 8C 02 14 */	add r12, r12, r0
/* 80A7FAC8  4B 8E 25 BD */	bl __ptmf_scall
/* 80A7FACC  60 00 00 00 */	nop 
/* 80A7FAD0  2C 03 00 00 */	cmpwi r3, 0
/* 80A7FAD4  41 82 00 10 */	beq lbl_80A7FAE4
/* 80A7FAD8  7F 63 DB 78 */	mr r3, r27
/* 80A7FADC  7F C4 F3 78 */	mr r4, r30
/* 80A7FAE0  4B 5C 86 9D */	bl cutEnd__16dEvent_manager_cFi
lbl_80A7FAE4:
/* 80A7FAE4  3B C0 00 01 */	li r30, 1
lbl_80A7FAE8:
/* 80A7FAE8  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80A7FAEC  28 00 00 02 */	cmplwi r0, 2
/* 80A7FAF0  40 82 03 DC */	bne lbl_80A7FECC
/* 80A7FAF4  A8 9D 09 D4 */	lha r4, 0x9d4(r29)
/* 80A7FAF8  2C 04 FF FF */	cmpwi r4, -1
/* 80A7FAFC  41 82 03 D0 */	beq lbl_80A7FECC
/* 80A7FB00  7F 63 DB 78 */	mr r3, r27
/* 80A7FB04  4B 5C 7F 75 */	bl endCheck__16dEvent_manager_cFs
/* 80A7FB08  2C 03 00 00 */	cmpwi r3, 0
/* 80A7FB0C  41 82 03 C0 */	beq lbl_80A7FECC
/* 80A7FB10  38 7C 4E C8 */	addi r3, r28, 0x4ec8
/* 80A7FB14  4B 5C 29 55 */	bl reset__14dEvt_control_cFv
/* 80A7FB18  38 00 00 00 */	li r0, 0
/* 80A7FB1C  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 80A7FB20  38 00 FF FF */	li r0, -1
/* 80A7FB24  B0 1D 09 D4 */	sth r0, 0x9d4(r29)
/* 80A7FB28  88 1D 0E 0B */	lbz r0, 0xe0b(r29)
/* 80A7FB2C  2C 00 00 01 */	cmpwi r0, 1
/* 80A7FB30  41 82 00 AC */	beq lbl_80A7FBDC
/* 80A7FB34  40 80 00 10 */	bge lbl_80A7FB44
/* 80A7FB38  2C 00 00 00 */	cmpwi r0, 0
/* 80A7FB3C  40 80 00 14 */	bge lbl_80A7FB50
/* 80A7FB40  48 00 03 8C */	b lbl_80A7FECC
lbl_80A7FB44:
/* 80A7FB44  2C 00 00 03 */	cmpwi r0, 3
/* 80A7FB48  40 80 03 84 */	bge lbl_80A7FECC
/* 80A7FB4C  48 00 01 1C */	b lbl_80A7FC68
lbl_80A7FB50:
/* 80A7FB50  80 7F 02 EC */	lwz r3, 0x2ec(r31)
/* 80A7FB54  80 1F 02 F0 */	lwz r0, 0x2f0(r31)
/* 80A7FB58  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80A7FB5C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A7FB60  80 1F 02 F4 */	lwz r0, 0x2f4(r31)
/* 80A7FB64  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A7FB68  38 00 00 03 */	li r0, 3
/* 80A7FB6C  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7FB70  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7FB74  4B 8E 24 A5 */	bl __ptmf_test
/* 80A7FB78  2C 03 00 00 */	cmpwi r3, 0
/* 80A7FB7C  41 82 00 18 */	beq lbl_80A7FB94
/* 80A7FB80  7F A3 EB 78 */	mr r3, r29
/* 80A7FB84  38 80 00 00 */	li r4, 0
/* 80A7FB88  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7FB8C  4B 8E 24 F9 */	bl __ptmf_scall
/* 80A7FB90  60 00 00 00 */	nop 
lbl_80A7FB94:
/* 80A7FB94  38 00 00 00 */	li r0, 0
/* 80A7FB98  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7FB9C  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80A7FBA0  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80A7FBA4  90 7D 0D DC */	stw r3, 0xddc(r29)
/* 80A7FBA8  90 1D 0D E0 */	stw r0, 0xde0(r29)
/* 80A7FBAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A7FBB0  90 1D 0D E4 */	stw r0, 0xde4(r29)
/* 80A7FBB4  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7FBB8  4B 8E 24 61 */	bl __ptmf_test
/* 80A7FBBC  2C 03 00 00 */	cmpwi r3, 0
/* 80A7FBC0  41 82 03 0C */	beq lbl_80A7FECC
/* 80A7FBC4  7F A3 EB 78 */	mr r3, r29
/* 80A7FBC8  38 80 00 00 */	li r4, 0
/* 80A7FBCC  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7FBD0  4B 8E 24 B5 */	bl __ptmf_scall
/* 80A7FBD4  60 00 00 00 */	nop 
/* 80A7FBD8  48 00 02 F4 */	b lbl_80A7FECC
lbl_80A7FBDC:
/* 80A7FBDC  80 7F 02 F8 */	lwz r3, 0x2f8(r31)
/* 80A7FBE0  80 1F 02 FC */	lwz r0, 0x2fc(r31)
/* 80A7FBE4  90 61 00 38 */	stw r3, 0x38(r1)
/* 80A7FBE8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A7FBEC  80 1F 03 00 */	lwz r0, 0x300(r31)
/* 80A7FBF0  90 01 00 40 */	stw r0, 0x40(r1)
/* 80A7FBF4  38 00 00 03 */	li r0, 3
/* 80A7FBF8  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7FBFC  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7FC00  4B 8E 24 19 */	bl __ptmf_test
/* 80A7FC04  2C 03 00 00 */	cmpwi r3, 0
/* 80A7FC08  41 82 00 18 */	beq lbl_80A7FC20
/* 80A7FC0C  7F A3 EB 78 */	mr r3, r29
/* 80A7FC10  38 80 00 00 */	li r4, 0
/* 80A7FC14  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7FC18  4B 8E 24 6D */	bl __ptmf_scall
/* 80A7FC1C  60 00 00 00 */	nop 
lbl_80A7FC20:
/* 80A7FC20  38 00 00 00 */	li r0, 0
/* 80A7FC24  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7FC28  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80A7FC2C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80A7FC30  90 7D 0D DC */	stw r3, 0xddc(r29)
/* 80A7FC34  90 1D 0D E0 */	stw r0, 0xde0(r29)
/* 80A7FC38  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80A7FC3C  90 1D 0D E4 */	stw r0, 0xde4(r29)
/* 80A7FC40  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7FC44  4B 8E 23 D5 */	bl __ptmf_test
/* 80A7FC48  2C 03 00 00 */	cmpwi r3, 0
/* 80A7FC4C  41 82 02 80 */	beq lbl_80A7FECC
/* 80A7FC50  7F A3 EB 78 */	mr r3, r29
/* 80A7FC54  38 80 00 00 */	li r4, 0
/* 80A7FC58  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7FC5C  4B 8E 24 29 */	bl __ptmf_scall
/* 80A7FC60  60 00 00 00 */	nop 
/* 80A7FC64  48 00 02 68 */	b lbl_80A7FECC
lbl_80A7FC68:
/* 80A7FC68  80 7F 03 04 */	lwz r3, 0x304(r31)
/* 80A7FC6C  80 1F 03 08 */	lwz r0, 0x308(r31)
/* 80A7FC70  90 61 00 44 */	stw r3, 0x44(r1)
/* 80A7FC74  90 01 00 48 */	stw r0, 0x48(r1)
/* 80A7FC78  80 1F 03 0C */	lwz r0, 0x30c(r31)
/* 80A7FC7C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80A7FC80  38 00 00 03 */	li r0, 3
/* 80A7FC84  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7FC88  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7FC8C  4B 8E 23 8D */	bl __ptmf_test
/* 80A7FC90  2C 03 00 00 */	cmpwi r3, 0
/* 80A7FC94  41 82 00 18 */	beq lbl_80A7FCAC
/* 80A7FC98  7F A3 EB 78 */	mr r3, r29
/* 80A7FC9C  38 80 00 00 */	li r4, 0
/* 80A7FCA0  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7FCA4  4B 8E 23 E1 */	bl __ptmf_scall
/* 80A7FCA8  60 00 00 00 */	nop 
lbl_80A7FCAC:
/* 80A7FCAC  38 00 00 00 */	li r0, 0
/* 80A7FCB0  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7FCB4  80 61 00 44 */	lwz r3, 0x44(r1)
/* 80A7FCB8  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80A7FCBC  90 7D 0D DC */	stw r3, 0xddc(r29)
/* 80A7FCC0  90 1D 0D E0 */	stw r0, 0xde0(r29)
/* 80A7FCC4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80A7FCC8  90 1D 0D E4 */	stw r0, 0xde4(r29)
/* 80A7FCCC  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7FCD0  4B 8E 23 49 */	bl __ptmf_test
/* 80A7FCD4  2C 03 00 00 */	cmpwi r3, 0
/* 80A7FCD8  41 82 01 F4 */	beq lbl_80A7FECC
/* 80A7FCDC  7F A3 EB 78 */	mr r3, r29
/* 80A7FCE0  38 80 00 00 */	li r4, 0
/* 80A7FCE4  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7FCE8  4B 8E 23 9D */	bl __ptmf_scall
/* 80A7FCEC  60 00 00 00 */	nop 
/* 80A7FCF0  48 00 01 DC */	b lbl_80A7FECC
lbl_80A7FCF4:
/* 80A7FCF4  38 00 00 00 */	li r0, 0
/* 80A7FCF8  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 80A7FCFC  38 00 FF FF */	li r0, -1
/* 80A7FD00  B0 1D 09 D4 */	sth r0, 0x9d4(r29)
/* 80A7FD04  88 1D 0E 0B */	lbz r0, 0xe0b(r29)
/* 80A7FD08  2C 00 00 01 */	cmpwi r0, 1
/* 80A7FD0C  41 82 00 AC */	beq lbl_80A7FDB8
/* 80A7FD10  40 80 00 10 */	bge lbl_80A7FD20
/* 80A7FD14  2C 00 00 00 */	cmpwi r0, 0
/* 80A7FD18  40 80 00 14 */	bge lbl_80A7FD2C
/* 80A7FD1C  48 00 01 B0 */	b lbl_80A7FECC
lbl_80A7FD20:
/* 80A7FD20  2C 00 00 03 */	cmpwi r0, 3
/* 80A7FD24  40 80 01 A8 */	bge lbl_80A7FECC
/* 80A7FD28  48 00 01 1C */	b lbl_80A7FE44
lbl_80A7FD2C:
/* 80A7FD2C  80 7F 02 EC */	lwz r3, 0x2ec(r31)
/* 80A7FD30  80 1F 02 F0 */	lwz r0, 0x2f0(r31)
/* 80A7FD34  90 61 00 08 */	stw r3, 8(r1)
/* 80A7FD38  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A7FD3C  80 1F 02 F4 */	lwz r0, 0x2f4(r31)
/* 80A7FD40  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A7FD44  38 00 00 03 */	li r0, 3
/* 80A7FD48  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7FD4C  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7FD50  4B 8E 22 C9 */	bl __ptmf_test
/* 80A7FD54  2C 03 00 00 */	cmpwi r3, 0
/* 80A7FD58  41 82 00 18 */	beq lbl_80A7FD70
/* 80A7FD5C  7F A3 EB 78 */	mr r3, r29
/* 80A7FD60  38 80 00 00 */	li r4, 0
/* 80A7FD64  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7FD68  4B 8E 23 1D */	bl __ptmf_scall
/* 80A7FD6C  60 00 00 00 */	nop 
lbl_80A7FD70:
/* 80A7FD70  38 00 00 00 */	li r0, 0
/* 80A7FD74  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7FD78  80 61 00 08 */	lwz r3, 8(r1)
/* 80A7FD7C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A7FD80  90 7D 0D DC */	stw r3, 0xddc(r29)
/* 80A7FD84  90 1D 0D E0 */	stw r0, 0xde0(r29)
/* 80A7FD88  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80A7FD8C  90 1D 0D E4 */	stw r0, 0xde4(r29)
/* 80A7FD90  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7FD94  4B 8E 22 85 */	bl __ptmf_test
/* 80A7FD98  2C 03 00 00 */	cmpwi r3, 0
/* 80A7FD9C  41 82 01 30 */	beq lbl_80A7FECC
/* 80A7FDA0  7F A3 EB 78 */	mr r3, r29
/* 80A7FDA4  38 80 00 00 */	li r4, 0
/* 80A7FDA8  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7FDAC  4B 8E 22 D9 */	bl __ptmf_scall
/* 80A7FDB0  60 00 00 00 */	nop 
/* 80A7FDB4  48 00 01 18 */	b lbl_80A7FECC
lbl_80A7FDB8:
/* 80A7FDB8  80 7F 02 F8 */	lwz r3, 0x2f8(r31)
/* 80A7FDBC  80 1F 02 FC */	lwz r0, 0x2fc(r31)
/* 80A7FDC0  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A7FDC4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A7FDC8  80 1F 03 00 */	lwz r0, 0x300(r31)
/* 80A7FDCC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A7FDD0  38 00 00 03 */	li r0, 3
/* 80A7FDD4  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7FDD8  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7FDDC  4B 8E 22 3D */	bl __ptmf_test
/* 80A7FDE0  2C 03 00 00 */	cmpwi r3, 0
/* 80A7FDE4  41 82 00 18 */	beq lbl_80A7FDFC
/* 80A7FDE8  7F A3 EB 78 */	mr r3, r29
/* 80A7FDEC  38 80 00 00 */	li r4, 0
/* 80A7FDF0  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7FDF4  4B 8E 22 91 */	bl __ptmf_scall
/* 80A7FDF8  60 00 00 00 */	nop 
lbl_80A7FDFC:
/* 80A7FDFC  38 00 00 00 */	li r0, 0
/* 80A7FE00  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7FE04  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80A7FE08  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80A7FE0C  90 7D 0D DC */	stw r3, 0xddc(r29)
/* 80A7FE10  90 1D 0D E0 */	stw r0, 0xde0(r29)
/* 80A7FE14  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A7FE18  90 1D 0D E4 */	stw r0, 0xde4(r29)
/* 80A7FE1C  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7FE20  4B 8E 21 F9 */	bl __ptmf_test
/* 80A7FE24  2C 03 00 00 */	cmpwi r3, 0
/* 80A7FE28  41 82 00 A4 */	beq lbl_80A7FECC
/* 80A7FE2C  7F A3 EB 78 */	mr r3, r29
/* 80A7FE30  38 80 00 00 */	li r4, 0
/* 80A7FE34  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7FE38  4B 8E 22 4D */	bl __ptmf_scall
/* 80A7FE3C  60 00 00 00 */	nop 
/* 80A7FE40  48 00 00 8C */	b lbl_80A7FECC
lbl_80A7FE44:
/* 80A7FE44  80 7F 03 04 */	lwz r3, 0x304(r31)
/* 80A7FE48  80 1F 03 08 */	lwz r0, 0x308(r31)
/* 80A7FE4C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A7FE50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A7FE54  80 1F 03 0C */	lwz r0, 0x30c(r31)
/* 80A7FE58  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A7FE5C  38 00 00 03 */	li r0, 3
/* 80A7FE60  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7FE64  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7FE68  4B 8E 21 B1 */	bl __ptmf_test
/* 80A7FE6C  2C 03 00 00 */	cmpwi r3, 0
/* 80A7FE70  41 82 00 18 */	beq lbl_80A7FE88
/* 80A7FE74  7F A3 EB 78 */	mr r3, r29
/* 80A7FE78  38 80 00 00 */	li r4, 0
/* 80A7FE7C  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7FE80  4B 8E 22 05 */	bl __ptmf_scall
/* 80A7FE84  60 00 00 00 */	nop 
lbl_80A7FE88:
/* 80A7FE88  38 00 00 00 */	li r0, 0
/* 80A7FE8C  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7FE90  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80A7FE94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A7FE98  90 7D 0D DC */	stw r3, 0xddc(r29)
/* 80A7FE9C  90 1D 0D E0 */	stw r0, 0xde0(r29)
/* 80A7FEA0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80A7FEA4  90 1D 0D E4 */	stw r0, 0xde4(r29)
/* 80A7FEA8  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7FEAC  4B 8E 21 6D */	bl __ptmf_test
/* 80A7FEB0  2C 03 00 00 */	cmpwi r3, 0
/* 80A7FEB4  41 82 00 18 */	beq lbl_80A7FECC
/* 80A7FEB8  7F A3 EB 78 */	mr r3, r29
/* 80A7FEBC  38 80 00 00 */	li r4, 0
/* 80A7FEC0  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7FEC4  4B 8E 21 C1 */	bl __ptmf_scall
/* 80A7FEC8  60 00 00 00 */	nop 
lbl_80A7FECC:
/* 80A7FECC  7F C3 F3 78 */	mr r3, r30
/* 80A7FED0  39 61 00 70 */	addi r11, r1, 0x70
/* 80A7FED4  4B 8E 23 4D */	bl _restgpr_27
/* 80A7FED8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A7FEDC  7C 08 03 A6 */	mtlr r0
/* 80A7FEE0  38 21 00 70 */	addi r1, r1, 0x70
/* 80A7FEE4  4E 80 00 20 */	blr 
