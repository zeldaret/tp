lbl_80C2FF10:
/* 80C2FF10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C2FF14  7C 08 02 A6 */	mflr r0
/* 80C2FF18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C2FF1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C2FF20  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C2FF24  7C 7E 1B 78 */	mr r30, r3
/* 80C2FF28  3C 80 80 C3 */	lis r4, lit_3774@ha /* 0x80C3114C@ha */
/* 80C2FF2C  3B E4 11 4C */	addi r31, r4, lit_3774@l /* 0x80C3114C@l */
/* 80C2FF30  80 03 08 3C */	lwz r0, 0x83c(r3)
/* 80C2FF34  2C 00 00 00 */	cmpwi r0, 0
/* 80C2FF38  40 82 00 84 */	bne lbl_80C2FFBC
/* 80C2FF3C  3C 60 80 C3 */	lis r3, d_a_obj_kag__stringBase0@ha /* 0x80C31260@ha */
/* 80C2FF40  38 63 12 60 */	addi r3, r3, d_a_obj_kag__stringBase0@l /* 0x80C31260@l */
/* 80C2FF44  38 80 00 06 */	li r4, 6
/* 80C2FF48  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2FF4C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2FF50  3C A5 00 02 */	addis r5, r5, 2
/* 80C2FF54  38 C0 00 80 */	li r6, 0x80
/* 80C2FF58  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C2FF5C  4B 40 C3 91 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2FF60  7C 64 1B 78 */	mr r4, r3
/* 80C2FF64  80 7E 06 28 */	lwz r3, 0x628(r30)
/* 80C2FF68  38 A0 00 02 */	li r5, 2
/* 80C2FF6C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80C2FF70  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80C2FF74  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 80C2FF78  C0 9F 00 40 */	lfs f4, 0x40(r31)
/* 80C2FF7C  4B 3E 0E F5 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C2FF80  38 00 00 01 */	li r0, 1
/* 80C2FF84  98 1E 05 6D */	stb r0, 0x56d(r30)
/* 80C2FF88  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80C2FF8C  D0 1E 05 34 */	stfs f0, 0x534(r30)
/* 80C2FF90  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80C2FF94  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80C2FF98  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80C2FF9C  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80C2FFA0  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80C2FFA4  38 00 00 0A */	li r0, 0xa
/* 80C2FFA8  98 1E 08 5A */	stb r0, 0x85a(r30)
/* 80C2FFAC  80 7E 08 3C */	lwz r3, 0x83c(r30)
/* 80C2FFB0  38 03 00 01 */	addi r0, r3, 1
/* 80C2FFB4  90 1E 08 3C */	stw r0, 0x83c(r30)
/* 80C2FFB8  48 00 00 A0 */	b lbl_80C30058
lbl_80C2FFBC:
/* 80C2FFBC  2C 00 FF FF */	cmpwi r0, -1
/* 80C2FFC0  41 82 00 98 */	beq lbl_80C30058
/* 80C2FFC4  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80C2FFC8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C2FFCC  38 80 00 00 */	li r4, 0
/* 80C2FFD0  4B 3E A6 FD */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80C2FFD4  88 1E 08 5A */	lbz r0, 0x85a(r30)
/* 80C2FFD8  28 00 00 00 */	cmplwi r0, 0
/* 80C2FFDC  41 82 00 18 */	beq lbl_80C2FFF4
/* 80C2FFE0  38 61 00 08 */	addi r3, r1, 8
/* 80C2FFE4  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80C2FFE8  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80C2FFEC  4B 64 07 55 */	bl cLib_chaseF__FPfff
/* 80C2FFF0  48 00 00 44 */	b lbl_80C30034
lbl_80C2FFF4:
/* 80C2FFF4  38 61 00 08 */	addi r3, r1, 8
/* 80C2FFF8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C2FFFC  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 80C30000  C0 7F 00 D0 */	lfs f3, 0xd0(r31)
/* 80C30004  4B 63 FA 39 */	bl cLib_addCalc2__FPffff
/* 80C30008  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C3000C  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80C30010  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80C30014  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80C30018  C0 21 00 08 */	lfs f1, 8(r1)
/* 80C3001C  C8 1F 00 D8 */	lfd f0, 0xd8(r31)
/* 80C30020  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C30024  40 80 00 10 */	bge lbl_80C30034
/* 80C30028  7F C3 F3 78 */	mr r3, r30
/* 80C3002C  4B 3E 9C 51 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80C30030  48 00 00 28 */	b lbl_80C30058
lbl_80C30034:
/* 80C30034  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C30038  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80C3003C  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80C30040  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80C30044  88 1E 05 6D */	lbz r0, 0x56d(r30)
/* 80C30048  28 00 00 00 */	cmplwi r0, 0
/* 80C3004C  41 82 00 0C */	beq lbl_80C30058
/* 80C30050  7F C3 F3 78 */	mr r3, r30
/* 80C30054  48 00 0E 01 */	bl kag_setParticle__10daObjKAG_cFv
lbl_80C30058:
/* 80C30058  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C3005C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C30060  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C30064  7C 08 03 A6 */	mtlr r0
/* 80C30068  38 21 00 20 */	addi r1, r1, 0x20
/* 80C3006C  4E 80 00 20 */	blr 
