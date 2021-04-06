lbl_80738C2C:
/* 80738C2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80738C30  7C 08 02 A6 */	mflr r0
/* 80738C34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80738C38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80738C3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80738C40  7C 7E 1B 78 */	mr r30, r3
/* 80738C44  3C 60 80 74 */	lis r3, lit_3768@ha /* 0x80739D60@ha */
/* 80738C48  3B E3 9D 60 */	addi r31, r3, lit_3768@l /* 0x80739D60@l */
/* 80738C4C  80 1E 0B 70 */	lwz r0, 0xb70(r30)
/* 80738C50  2C 00 00 00 */	cmpwi r0, 0
/* 80738C54  40 82 00 64 */	bne lbl_80738CB8
/* 80738C58  3C 60 80 74 */	lis r3, d_a_e_oct_bg__stringBase0@ha /* 0x80739E44@ha */
/* 80738C5C  38 63 9E 44 */	addi r3, r3, d_a_e_oct_bg__stringBase0@l /* 0x80739E44@l */
/* 80738C60  38 80 00 05 */	li r4, 5
/* 80738C64  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80738C68  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80738C6C  3C A5 00 02 */	addis r5, r5, 2
/* 80738C70  38 C0 00 80 */	li r6, 0x80
/* 80738C74  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80738C78  4B 90 36 75 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80738C7C  7C 64 1B 78 */	mr r4, r3
/* 80738C80  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80738C84  38 A0 00 02 */	li r5, 2
/* 80738C88  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80738C8C  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80738C90  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80738C94  C0 9F 00 D0 */	lfs f4, 0xd0(r31)
/* 80738C98  4B 8D 81 D9 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80738C9C  38 00 00 00 */	li r0, 0
/* 80738CA0  B0 1E 0B 82 */	sth r0, 0xb82(r30)
/* 80738CA4  B0 1E 0B 8C */	sth r0, 0xb8c(r30)
/* 80738CA8  80 7E 0B 70 */	lwz r3, 0xb70(r30)
/* 80738CAC  38 03 00 01 */	addi r0, r3, 1
/* 80738CB0  90 1E 0B 70 */	stw r0, 0xb70(r30)
/* 80738CB4  48 00 01 64 */	b lbl_80738E18
lbl_80738CB8:
/* 80738CB8  2C 00 FF FF */	cmpwi r0, -1
/* 80738CBC  41 82 01 5C */	beq lbl_80738E18
/* 80738CC0  2C 00 00 01 */	cmpwi r0, 1
/* 80738CC4  40 82 00 94 */	bne lbl_80738D58
/* 80738CC8  38 00 00 78 */	li r0, 0x78
/* 80738CCC  90 1E 0B 90 */	stw r0, 0xb90(r30)
/* 80738CD0  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80738CD4  A8 1E 0B 96 */	lha r0, 0xb96(r30)
/* 80738CD8  7C 03 02 14 */	add r0, r3, r0
/* 80738CDC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80738CE0  A8 7E 04 DC */	lha r3, 0x4dc(r30)
/* 80738CE4  A8 1E 0B 96 */	lha r0, 0xb96(r30)
/* 80738CE8  7C 03 02 14 */	add r0, r3, r0
/* 80738CEC  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80738CF0  80 1E 06 D8 */	lwz r0, 0x6d8(r30)
/* 80738CF4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80738CF8  41 82 00 1C */	beq lbl_80738D14
/* 80738CFC  80 7E 0B 70 */	lwz r3, 0xb70(r30)
/* 80738D00  38 03 00 01 */	addi r0, r3, 1
/* 80738D04  90 1E 0B 70 */	stw r0, 0xb70(r30)
/* 80738D08  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80738D0C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80738D10  48 00 00 14 */	b lbl_80738D24
lbl_80738D14:
/* 80738D14  38 7E 0B 96 */	addi r3, r30, 0xb96
/* 80738D18  38 80 01 00 */	li r4, 0x100
/* 80738D1C  38 A0 00 80 */	li r5, 0x80
/* 80738D20  4B B3 7E 71 */	bl cLib_chaseAngleS__FPsss
lbl_80738D24:
/* 80738D24  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80738D28  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80738D2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80738D30  40 80 00 14 */	bge lbl_80738D44
/* 80738D34  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80738D38  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80738D3C  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80738D40  D0 1E 05 34 */	stfs f0, 0x534(r30)
lbl_80738D44:
/* 80738D44  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80738D48  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80738D4C  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80738D50  4B B3 79 F1 */	bl cLib_chaseF__FPfff
/* 80738D54  48 00 00 C4 */	b lbl_80738E18
lbl_80738D58:
/* 80738D58  2C 00 00 02 */	cmpwi r0, 2
/* 80738D5C  40 82 00 BC */	bne lbl_80738E18
/* 80738D60  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80738D64  A8 1E 0B 96 */	lha r0, 0xb96(r30)
/* 80738D68  7C 03 02 14 */	add r0, r3, r0
/* 80738D6C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80738D70  80 1E 06 D8 */	lwz r0, 0x6d8(r30)
/* 80738D74  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80738D78  41 82 00 48 */	beq lbl_80738DC0
/* 80738D7C  88 1E 0B AE */	lbz r0, 0xbae(r30)
/* 80738D80  28 00 00 00 */	cmplwi r0, 0
/* 80738D84  41 82 00 14 */	beq lbl_80738D98
/* 80738D88  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 80738D8C  38 80 80 00 */	li r4, -32768
/* 80738D90  38 A0 00 80 */	li r5, 0x80
/* 80738D94  4B B3 7D FD */	bl cLib_chaseAngleS__FPsss
lbl_80738D98:
/* 80738D98  38 7E 0B 96 */	addi r3, r30, 0xb96
/* 80738D9C  38 80 00 00 */	li r4, 0
/* 80738DA0  38 A0 00 80 */	li r5, 0x80
/* 80738DA4  4B B3 7D ED */	bl cLib_chaseAngleS__FPsss
/* 80738DA8  7F C3 F3 78 */	mr r3, r30
/* 80738DAC  38 80 00 00 */	li r4, 0
/* 80738DB0  4B FF FB 65 */	bl setBombCarry__11daE_OctBg_cFi
/* 80738DB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80738DB8  41 82 00 30 */	beq lbl_80738DE8
/* 80738DBC  48 00 00 5C */	b lbl_80738E18
lbl_80738DC0:
/* 80738DC0  38 00 00 0A */	li r0, 0xa
/* 80738DC4  98 1E 0B AE */	stb r0, 0xbae(r30)
/* 80738DC8  38 7E 0B 96 */	addi r3, r30, 0xb96
/* 80738DCC  38 80 01 00 */	li r4, 0x100
/* 80738DD0  38 A0 00 80 */	li r5, 0x80
/* 80738DD4  4B B3 7D BD */	bl cLib_chaseAngleS__FPsss
/* 80738DD8  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 80738DDC  38 80 80 00 */	li r4, -32768
/* 80738DE0  38 A0 00 80 */	li r5, 0x80
/* 80738DE4  4B B3 7D AD */	bl cLib_chaseAngleS__FPsss
lbl_80738DE8:
/* 80738DE8  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80738DEC  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80738DF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80738DF4  40 80 00 14 */	bge lbl_80738E08
/* 80738DF8  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80738DFC  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80738E00  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80738E04  D0 1E 05 34 */	stfs f0, 0x534(r30)
lbl_80738E08:
/* 80738E08  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80738E0C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80738E10  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80738E14  4B B3 79 2D */	bl cLib_chaseF__FPfff
lbl_80738E18:
/* 80738E18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80738E1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80738E20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80738E24  7C 08 03 A6 */	mtlr r0
/* 80738E28  38 21 00 10 */	addi r1, r1, 0x10
/* 80738E2C  4E 80 00 20 */	blr 
