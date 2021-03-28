lbl_80C16918:
/* 80C16918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1691C  7C 08 02 A6 */	mflr r0
/* 80C16920  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C16924  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C16928  93 C1 00 08 */	stw r30, 8(r1)
/* 80C1692C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C16930  7C 9F 23 78 */	mr r31, r4
/* 80C16934  41 82 01 48 */	beq lbl_80C16A7C
/* 80C16938  3C 60 80 C1 */	lis r3, __vt__14daObjHBarrel_c@ha
/* 80C1693C  38 03 73 D0 */	addi r0, r3, __vt__14daObjHBarrel_c@l
/* 80C16940  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80C16944  7F C3 F3 78 */	mr r3, r30
/* 80C16948  41 82 00 08 */	beq lbl_80C16950
/* 80C1694C  38 63 05 68 */	addi r3, r3, 0x568
lbl_80C16950:
/* 80C16950  3C 80 80 C1 */	lis r4, l_arcName@ha
/* 80C16954  38 84 73 7C */	addi r4, r4, l_arcName@l
/* 80C16958  80 84 00 00 */	lwz r4, 0(r4)
/* 80C1695C  4B 41 66 AC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C16960  34 1E 06 F0 */	addic. r0, r30, 0x6f0
/* 80C16964  41 82 00 1C */	beq lbl_80C16980
/* 80C16968  3C 60 80 3D */	lis r3, __vt__16Z2SoundObjSimple@ha
/* 80C1696C  38 03 AD 10 */	addi r0, r3, __vt__16Z2SoundObjSimple@l
/* 80C16970  90 1E 07 00 */	stw r0, 0x700(r30)
/* 80C16974  38 7E 06 F0 */	addi r3, r30, 0x6f0
/* 80C16978  38 80 00 00 */	li r4, 0
/* 80C1697C  4B 6A 75 CC */	b __dt__14Z2SoundObjBaseFv
lbl_80C16980:
/* 80C16980  34 1E 05 B4 */	addic. r0, r30, 0x5b4
/* 80C16984  41 82 00 84 */	beq lbl_80C16A08
/* 80C16988  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C1698C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C16990  90 7E 05 F0 */	stw r3, 0x5f0(r30)
/* 80C16994  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C16998  90 1E 06 D4 */	stw r0, 0x6d4(r30)
/* 80C1699C  38 03 00 84 */	addi r0, r3, 0x84
/* 80C169A0  90 1E 06 EC */	stw r0, 0x6ec(r30)
/* 80C169A4  34 1E 06 B8 */	addic. r0, r30, 0x6b8
/* 80C169A8  41 82 00 54 */	beq lbl_80C169FC
/* 80C169AC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C169B0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C169B4  90 7E 06 D4 */	stw r3, 0x6d4(r30)
/* 80C169B8  38 03 00 58 */	addi r0, r3, 0x58
/* 80C169BC  90 1E 06 EC */	stw r0, 0x6ec(r30)
/* 80C169C0  34 1E 06 D8 */	addic. r0, r30, 0x6d8
/* 80C169C4  41 82 00 10 */	beq lbl_80C169D4
/* 80C169C8  3C 60 80 C1 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C169CC  38 03 73 F4 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C169D0  90 1E 06 EC */	stw r0, 0x6ec(r30)
lbl_80C169D4:
/* 80C169D4  34 1E 06 B8 */	addic. r0, r30, 0x6b8
/* 80C169D8  41 82 00 24 */	beq lbl_80C169FC
/* 80C169DC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C169E0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C169E4  90 1E 06 D4 */	stw r0, 0x6d4(r30)
/* 80C169E8  34 1E 06 B8 */	addic. r0, r30, 0x6b8
/* 80C169EC  41 82 00 10 */	beq lbl_80C169FC
/* 80C169F0  3C 60 80 C1 */	lis r3, __vt__8cM3dGAab@ha
/* 80C169F4  38 03 74 00 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C169F8  90 1E 06 D0 */	stw r0, 0x6d0(r30)
lbl_80C169FC:
/* 80C169FC  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80C16A00  38 80 00 00 */	li r4, 0
/* 80C16A04  4B 46 D6 E0 */	b __dt__12dCcD_GObjInfFv
lbl_80C16A08:
/* 80C16A08  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80C16A0C  41 82 00 54 */	beq lbl_80C16A60
/* 80C16A10  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C16A14  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C16A18  90 7E 05 90 */	stw r3, 0x590(r30)
/* 80C16A1C  38 03 00 20 */	addi r0, r3, 0x20
/* 80C16A20  90 1E 05 94 */	stw r0, 0x594(r30)
/* 80C16A24  34 1E 05 94 */	addic. r0, r30, 0x594
/* 80C16A28  41 82 00 24 */	beq lbl_80C16A4C
/* 80C16A2C  3C 60 80 C1 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C16A30  38 03 73 E8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C16A34  90 1E 05 94 */	stw r0, 0x594(r30)
/* 80C16A38  34 1E 05 94 */	addic. r0, r30, 0x594
/* 80C16A3C  41 82 00 10 */	beq lbl_80C16A4C
/* 80C16A40  3C 60 80 C1 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C16A44  38 03 73 DC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C16A48  90 1E 05 94 */	stw r0, 0x594(r30)
lbl_80C16A4C:
/* 80C16A4C  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80C16A50  41 82 00 10 */	beq lbl_80C16A60
/* 80C16A54  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C16A58  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C16A5C  90 1E 05 90 */	stw r0, 0x590(r30)
lbl_80C16A60:
/* 80C16A60  7F C3 F3 78 */	mr r3, r30
/* 80C16A64  38 80 00 00 */	li r4, 0
/* 80C16A68  4B 40 22 24 */	b __dt__10fopAc_ac_cFv
/* 80C16A6C  7F E0 07 35 */	extsh. r0, r31
/* 80C16A70  40 81 00 0C */	ble lbl_80C16A7C
/* 80C16A74  7F C3 F3 78 */	mr r3, r30
/* 80C16A78  4B 6B 82 C4 */	b __dl__FPv
lbl_80C16A7C:
/* 80C16A7C  7F C3 F3 78 */	mr r3, r30
/* 80C16A80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C16A84  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C16A88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C16A8C  7C 08 03 A6 */	mtlr r0
/* 80C16A90  38 21 00 10 */	addi r1, r1, 0x10
/* 80C16A94  4E 80 00 20 */	blr 
