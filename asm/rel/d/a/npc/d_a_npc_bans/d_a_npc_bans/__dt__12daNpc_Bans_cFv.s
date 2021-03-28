lbl_809628CC:
/* 809628CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809628D0  7C 08 02 A6 */	mflr r0
/* 809628D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809628D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809628DC  93 C1 00 08 */	stw r30, 8(r1)
/* 809628E0  7C 7E 1B 79 */	or. r30, r3, r3
/* 809628E4  7C 9F 23 78 */	mr r31, r4
/* 809628E8  41 82 01 9C */	beq lbl_80962A84
/* 809628EC  3C 80 80 97 */	lis r4, __vt__12daNpc_Bans_c@ha
/* 809628F0  38 04 87 70 */	addi r0, r4, __vt__12daNpc_Bans_c@l
/* 809628F4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 809628F8  4B 83 7C 6C */	b deleteObject__13dShopSystem_cFv
/* 809628FC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80962900  28 03 00 00 */	cmplwi r3, 0
/* 80962904  41 82 00 08 */	beq lbl_8096290C
/* 80962908  4B 6A EA 08 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8096290C:
/* 8096290C  80 7E 0F 7C */	lwz r3, 0xf7c(r30)
/* 80962910  28 03 00 00 */	cmplwi r3, 0
/* 80962914  41 82 00 08 */	beq lbl_8096291C
/* 80962918  4B 6A E9 F8 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8096291C:
/* 8096291C  7F C3 F3 78 */	mr r3, r30
/* 80962920  88 1E 12 00 */	lbz r0, 0x1200(r30)
/* 80962924  54 00 10 3A */	slwi r0, r0, 2
/* 80962928  3C 80 80 97 */	lis r4, l_loadResPtrnList@ha
/* 8096292C  38 84 80 B8 */	addi r4, r4, l_loadResPtrnList@l
/* 80962930  7C 84 00 2E */	lwzx r4, r4, r0
/* 80962934  3C A0 80 97 */	lis r5, l_resNameList@ha
/* 80962938  38 A5 80 88 */	addi r5, r5, l_resNameList@l
/* 8096293C  4B 7E 5B 70 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80962940  38 7E 12 04 */	addi r3, r30, 0x1204
/* 80962944  3C 80 80 96 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80962948  38 84 6D 88 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l
/* 8096294C  38 A0 00 08 */	li r5, 8
/* 80962950  38 C0 00 08 */	li r6, 8
/* 80962954  4B 9F F3 94 */	b __destroy_arr
/* 80962958  34 1E 10 C4 */	addic. r0, r30, 0x10c4
/* 8096295C  41 82 00 84 */	beq lbl_809629E0
/* 80962960  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80962964  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80962968  90 7E 11 00 */	stw r3, 0x1100(r30)
/* 8096296C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80962970  90 1E 11 E4 */	stw r0, 0x11e4(r30)
/* 80962974  38 03 00 84 */	addi r0, r3, 0x84
/* 80962978  90 1E 11 FC */	stw r0, 0x11fc(r30)
/* 8096297C  34 1E 11 C8 */	addic. r0, r30, 0x11c8
/* 80962980  41 82 00 54 */	beq lbl_809629D4
/* 80962984  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80962988  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8096298C  90 7E 11 E4 */	stw r3, 0x11e4(r30)
/* 80962990  38 03 00 58 */	addi r0, r3, 0x58
/* 80962994  90 1E 11 FC */	stw r0, 0x11fc(r30)
/* 80962998  34 1E 11 E8 */	addic. r0, r30, 0x11e8
/* 8096299C  41 82 00 10 */	beq lbl_809629AC
/* 809629A0  3C 60 80 97 */	lis r3, __vt__8cM3dGCyl@ha
/* 809629A4  38 03 87 64 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809629A8  90 1E 11 FC */	stw r0, 0x11fc(r30)
lbl_809629AC:
/* 809629AC  34 1E 11 C8 */	addic. r0, r30, 0x11c8
/* 809629B0  41 82 00 24 */	beq lbl_809629D4
/* 809629B4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809629B8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809629BC  90 1E 11 E4 */	stw r0, 0x11e4(r30)
/* 809629C0  34 1E 11 C8 */	addic. r0, r30, 0x11c8
/* 809629C4  41 82 00 10 */	beq lbl_809629D4
/* 809629C8  3C 60 80 97 */	lis r3, __vt__8cM3dGAab@ha
/* 809629CC  38 03 87 58 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809629D0  90 1E 11 E0 */	stw r0, 0x11e0(r30)
lbl_809629D4:
/* 809629D4  38 7E 10 C4 */	addi r3, r30, 0x10c4
/* 809629D8  38 80 00 00 */	li r4, 0
/* 809629DC  4B 72 17 08 */	b __dt__12dCcD_GObjInfFv
lbl_809629E0:
/* 809629E0  34 1E 0F 88 */	addic. r0, r30, 0xf88
/* 809629E4  41 82 00 84 */	beq lbl_80962A68
/* 809629E8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809629EC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809629F0  90 7E 0F C4 */	stw r3, 0xfc4(r30)
/* 809629F4  38 03 00 2C */	addi r0, r3, 0x2c
/* 809629F8  90 1E 10 A8 */	stw r0, 0x10a8(r30)
/* 809629FC  38 03 00 84 */	addi r0, r3, 0x84
/* 80962A00  90 1E 10 C0 */	stw r0, 0x10c0(r30)
/* 80962A04  34 1E 10 8C */	addic. r0, r30, 0x108c
/* 80962A08  41 82 00 54 */	beq lbl_80962A5C
/* 80962A0C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80962A10  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80962A14  90 7E 10 A8 */	stw r3, 0x10a8(r30)
/* 80962A18  38 03 00 58 */	addi r0, r3, 0x58
/* 80962A1C  90 1E 10 C0 */	stw r0, 0x10c0(r30)
/* 80962A20  34 1E 10 AC */	addic. r0, r30, 0x10ac
/* 80962A24  41 82 00 10 */	beq lbl_80962A34
/* 80962A28  3C 60 80 97 */	lis r3, __vt__8cM3dGCyl@ha
/* 80962A2C  38 03 87 64 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80962A30  90 1E 10 C0 */	stw r0, 0x10c0(r30)
lbl_80962A34:
/* 80962A34  34 1E 10 8C */	addic. r0, r30, 0x108c
/* 80962A38  41 82 00 24 */	beq lbl_80962A5C
/* 80962A3C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80962A40  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80962A44  90 1E 10 A8 */	stw r0, 0x10a8(r30)
/* 80962A48  34 1E 10 8C */	addic. r0, r30, 0x108c
/* 80962A4C  41 82 00 10 */	beq lbl_80962A5C
/* 80962A50  3C 60 80 97 */	lis r3, __vt__8cM3dGAab@ha
/* 80962A54  38 03 87 58 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80962A58  90 1E 10 A4 */	stw r0, 0x10a4(r30)
lbl_80962A5C:
/* 80962A5C  38 7E 0F 88 */	addi r3, r30, 0xf88
/* 80962A60  38 80 00 00 */	li r4, 0
/* 80962A64  4B 72 16 80 */	b __dt__12dCcD_GObjInfFv
lbl_80962A68:
/* 80962A68  7F C3 F3 78 */	mr r3, r30
/* 80962A6C  38 80 00 00 */	li r4, 0
/* 80962A70  4B 83 4A 74 */	b __dt__13dShopSystem_cFv
/* 80962A74  7F E0 07 35 */	extsh. r0, r31
/* 80962A78  40 81 00 0C */	ble lbl_80962A84
/* 80962A7C  7F C3 F3 78 */	mr r3, r30
/* 80962A80  4B 96 C2 BC */	b __dl__FPv
lbl_80962A84:
/* 80962A84  7F C3 F3 78 */	mr r3, r30
/* 80962A88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80962A8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80962A90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80962A94  7C 08 03 A6 */	mtlr r0
/* 80962A98  38 21 00 10 */	addi r1, r1, 0x10
/* 80962A9C  4E 80 00 20 */	blr 
