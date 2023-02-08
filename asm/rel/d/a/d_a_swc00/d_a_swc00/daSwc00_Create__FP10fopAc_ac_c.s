lbl_805A1B2C:
/* 805A1B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A1B30  7C 08 02 A6 */	mflr r0
/* 805A1B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A1B38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A1B3C  93 C1 00 08 */	stw r30, 8(r1)
/* 805A1B40  7C 7E 1B 78 */	mr r30, r3
/* 805A1B44  3C 80 80 5A */	lis r4, lit_3708@ha /* 0x805A1D94@ha */
/* 805A1B48  3B E4 1D 94 */	addi r31, r4, lit_3708@l /* 0x805A1D94@l */
/* 805A1B4C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805A1B50  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805A1B54  40 82 00 1C */	bne lbl_805A1B70
/* 805A1B58  28 1E 00 00 */	cmplwi r30, 0
/* 805A1B5C  41 82 00 08 */	beq lbl_805A1B64
/* 805A1B60  4B A7 70 05 */	bl __ct__10fopAc_ac_cFv
lbl_805A1B64:
/* 805A1B64  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 805A1B68  60 00 00 08 */	ori r0, r0, 8
/* 805A1B6C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_805A1B70:
/* 805A1B70  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805A1B74  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 805A1B78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A1B7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A1B80  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805A1B84  7C 05 07 74 */	extsb r5, r0
/* 805A1B88  4B A9 37 D9 */	bl isSwitch__10dSv_info_cCFii
/* 805A1B8C  2C 03 00 00 */	cmpwi r3, 0
/* 805A1B90  41 82 00 54 */	beq lbl_805A1BE4
/* 805A1B94  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 805A1B98  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 805A1B9C  28 00 00 0F */	cmplwi r0, 0xf
/* 805A1BA0  41 81 00 68 */	bgt lbl_805A1C08
/* 805A1BA4  3C 60 80 5A */	lis r3, lit_3996@ha /* 0x805A1E94@ha */
/* 805A1BA8  38 63 1E 94 */	addi r3, r3, lit_3996@l /* 0x805A1E94@l */
/* 805A1BAC  54 00 10 3A */	slwi r0, r0, 2
/* 805A1BB0  7C 03 00 2E */	lwzx r0, r3, r0
/* 805A1BB4  7C 09 03 A6 */	mtctr r0
/* 805A1BB8  4E 80 04 20 */	bctr 
lbl_805A1BBC:
/* 805A1BBC  38 60 00 05 */	li r3, 5
/* 805A1BC0  48 00 01 B4 */	b lbl_805A1D74
lbl_805A1BC4:
/* 805A1BC4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805A1BC8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 805A1BCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A1BD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A1BD4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805A1BD8  7C 05 07 74 */	extsb r5, r0
/* 805A1BDC  4B A9 36 D5 */	bl offSwitch__10dSv_info_cFii
/* 805A1BE0  48 00 00 28 */	b lbl_805A1C08
lbl_805A1BE4:
/* 805A1BE4  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 805A1BE8  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 805A1BEC  2C 00 00 09 */	cmpwi r0, 9
/* 805A1BF0  40 80 00 18 */	bge lbl_805A1C08
/* 805A1BF4  2C 00 00 07 */	cmpwi r0, 7
/* 805A1BF8  40 80 00 08 */	bge lbl_805A1C00
/* 805A1BFC  48 00 00 0C */	b lbl_805A1C08
lbl_805A1C00:
/* 805A1C00  38 60 00 05 */	li r3, 5
/* 805A1C04  48 00 01 70 */	b lbl_805A1D74
lbl_805A1C08:
/* 805A1C08  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 805A1C0C  54 60 77 BE */	rlwinm r0, r3, 0xe, 0x1e, 0x1f
/* 805A1C10  54 63 67 3E */	rlwinm r3, r3, 0xc, 0x1c, 0x1f
/* 805A1C14  2C 00 00 03 */	cmpwi r0, 3
/* 805A1C18  40 82 00 84 */	bne lbl_805A1C9C
/* 805A1C1C  2C 03 00 01 */	cmpwi r3, 1
/* 805A1C20  41 82 00 40 */	beq lbl_805A1C60
/* 805A1C24  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 805A1C28  C0 5F 00 04 */	lfs f2, 4(r31)
/* 805A1C2C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805A1C30  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 805A1C34  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 805A1C38  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805A1C3C  EC 01 00 2A */	fadds f0, f1, f0
/* 805A1C40  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 805A1C44  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 805A1C48  EC 00 00 32 */	fmuls f0, f0, f0
/* 805A1C4C  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 805A1C50  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 805A1C54  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805A1C58  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 805A1C5C  48 00 00 F4 */	b lbl_805A1D50
lbl_805A1C60:
/* 805A1C60  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 805A1C64  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 805A1C68  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805A1C6C  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 805A1C70  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 805A1C74  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805A1C78  EC 01 00 2A */	fadds f0, f1, f0
/* 805A1C7C  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 805A1C80  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 805A1C84  EC 00 00 32 */	fmuls f0, f0, f0
/* 805A1C88  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 805A1C8C  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 805A1C90  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805A1C94  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 805A1C98  48 00 00 B8 */	b lbl_805A1D50
lbl_805A1C9C:
/* 805A1C9C  2C 00 00 00 */	cmpwi r0, 0
/* 805A1CA0  40 82 00 B0 */	bne lbl_805A1D50
/* 805A1CA4  2C 03 00 01 */	cmpwi r3, 1
/* 805A1CA8  41 82 00 0C */	beq lbl_805A1CB4
/* 805A1CAC  40 80 00 30 */	bge lbl_805A1CDC
/* 805A1CB0  48 00 00 2C */	b lbl_805A1CDC
lbl_805A1CB4:
/* 805A1CB4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 805A1CB8  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 805A1CBC  EC 01 00 32 */	fmuls f0, f1, f0
/* 805A1CC0  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 805A1CC4  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 805A1CC8  EC 01 00 32 */	fmuls f0, f1, f0
/* 805A1CCC  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 805A1CD0  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 805A1CD4  EC 01 00 32 */	fmuls f0, f1, f0
/* 805A1CD8  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
lbl_805A1CDC:
/* 805A1CDC  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 805A1CE0  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 805A1CE4  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 805A1CE8  EC 03 00 32 */	fmuls f0, f3, f0
/* 805A1CEC  EC 81 00 28 */	fsubs f4, f1, f0
/* 805A1CF0  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 805A1CF4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 805A1CF8  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 805A1CFC  EC 03 00 32 */	fmuls f0, f3, f0
/* 805A1D00  EC 01 00 28 */	fsubs f0, f1, f0
/* 805A1D04  D0 1E 05 68 */	stfs f0, 0x568(r30)
/* 805A1D08  D0 5E 05 6C */	stfs f2, 0x56c(r30)
/* 805A1D0C  D0 9E 05 70 */	stfs f4, 0x570(r30)
/* 805A1D10  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 805A1D14  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 805A1D18  EC 03 00 32 */	fmuls f0, f3, f0
/* 805A1D1C  EC 81 00 2A */	fadds f4, f1, f0
/* 805A1D20  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 805A1D24  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805A1D28  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 805A1D2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 805A1D30  EC 42 00 2A */	fadds f2, f2, f0
/* 805A1D34  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 805A1D38  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 805A1D3C  EC 03 00 32 */	fmuls f0, f3, f0
/* 805A1D40  EC 01 00 2A */	fadds f0, f1, f0
/* 805A1D44  D0 1E 05 74 */	stfs f0, 0x574(r30)
/* 805A1D48  D0 5E 05 78 */	stfs f2, 0x578(r30)
/* 805A1D4C  D0 9E 05 7C */	stfs f4, 0x57c(r30)
lbl_805A1D50:
/* 805A1D50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A1D54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A1D58  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 805A1D5C  7F C4 F3 78 */	mr r4, r30
/* 805A1D60  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805A1D64  54 05 46 3E */	srwi r5, r0, 0x18
/* 805A1D68  4B AA 59 31 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 805A1D6C  B0 7E 05 80 */	sth r3, 0x580(r30)
/* 805A1D70  38 60 00 04 */	li r3, 4
lbl_805A1D74:
/* 805A1D74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A1D78  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A1D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A1D80  7C 08 03 A6 */	mtlr r0
/* 805A1D84  38 21 00 10 */	addi r1, r1, 0x10
/* 805A1D88  4E 80 00 20 */	blr 
