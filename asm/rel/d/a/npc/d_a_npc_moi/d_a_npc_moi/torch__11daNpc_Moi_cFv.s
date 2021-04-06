lbl_80A76AFC:
/* 80A76AFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A76B00  7C 08 02 A6 */	mflr r0
/* 80A76B04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A76B08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A76B0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A76B10  7C 7E 1B 78 */	mr r30, r3
/* 80A76B14  3C 60 80 A8 */	lis r3, lit_1109@ha /* 0x80A7BFA8@ha */
/* 80A76B18  3B E3 BF A8 */	addi r31, r3, lit_1109@l /* 0x80A7BFA8@l */
/* 80A76B1C  3C 60 80 A8 */	lis r3, m__17daNpc_Moi_Param_c@ha /* 0x80A7AEF0@ha */
/* 80A76B20  38 83 AE F0 */	addi r4, r3, m__17daNpc_Moi_Param_c@l /* 0x80A7AEF0@l */
/* 80A76B24  38 00 00 00 */	li r0, 0
/* 80A76B28  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A76B2C  88 1F 00 5C */	lbz r0, 0x5c(r31)
/* 80A76B30  7C 00 07 75 */	extsb. r0, r0
/* 80A76B34  40 82 00 38 */	bne lbl_80A76B6C
/* 80A76B38  C0 04 01 2C */	lfs f0, 0x12c(r4)
/* 80A76B3C  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 80A76B40  C0 04 00 E8 */	lfs f0, 0xe8(r4)
/* 80A76B44  38 7F 00 60 */	addi r3, r31, 0x60
/* 80A76B48  D0 03 00 04 */	stfs f0, 4(r3)
/* 80A76B4C  C0 04 01 3C */	lfs f0, 0x13c(r4)
/* 80A76B50  D0 03 00 08 */	stfs f0, 8(r3)
/* 80A76B54  3C 80 80 A8 */	lis r4, __dt__4cXyzFv@ha /* 0x80A79D58@ha */
/* 80A76B58  38 84 9D 58 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A79D58@l */
/* 80A76B5C  38 BF 00 50 */	addi r5, r31, 0x50
/* 80A76B60  4B FF D3 79 */	bl __register_global_object
/* 80A76B64  38 00 00 01 */	li r0, 1
/* 80A76B68  98 1F 00 5C */	stb r0, 0x5c(r31)
lbl_80A76B6C:
/* 80A76B6C  80 1E 0E 58 */	lwz r0, 0xe58(r30)
/* 80A76B70  28 00 00 00 */	cmplwi r0, 0
/* 80A76B74  41 82 00 F0 */	beq lbl_80A76C64
/* 80A76B78  88 1E 16 68 */	lbz r0, 0x1668(r30)
/* 80A76B7C  28 00 00 00 */	cmplwi r0, 0
/* 80A76B80  41 82 00 E4 */	beq lbl_80A76C64
/* 80A76B84  38 7E 15 C8 */	addi r3, r30, 0x15c8
/* 80A76B88  4B 6C EB 81 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A76B8C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A76B90  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A76B94  80 63 00 04 */	lwz r3, 4(r3)
/* 80A76B98  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A76B9C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A76BA0  38 63 02 40 */	addi r3, r3, 0x240
/* 80A76BA4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A76BA8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A76BAC  4B 8C F9 05 */	bl PSMTXCopy
/* 80A76BB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A76BB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A76BB8  38 9F 00 60 */	addi r4, r31, 0x60
/* 80A76BBC  38 BE 16 28 */	addi r5, r30, 0x1628
/* 80A76BC0  4B 8D 01 AD */	bl PSMTXMultVec
/* 80A76BC4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80A76BC8  28 00 00 00 */	cmplwi r0, 0
/* 80A76BCC  40 82 00 98 */	bne lbl_80A76C64
/* 80A76BD0  88 1E 16 6F */	lbz r0, 0x166f(r30)
/* 80A76BD4  28 00 00 00 */	cmplwi r0, 0
/* 80A76BD8  40 82 00 8C */	bne lbl_80A76C64
/* 80A76BDC  80 7E 15 C0 */	lwz r3, 0x15c0(r30)
/* 80A76BE0  3C 03 00 01 */	addis r0, r3, 1
/* 80A76BE4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A76BE8  40 82 00 48 */	bne lbl_80A76C30
/* 80A76BEC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A76BF0  7C 07 07 74 */	extsb r7, r0
/* 80A76BF4  38 00 00 00 */	li r0, 0
/* 80A76BF8  90 01 00 08 */	stw r0, 8(r1)
/* 80A76BFC  38 60 01 05 */	li r3, 0x105
/* 80A76C00  28 1E 00 00 */	cmplwi r30, 0
/* 80A76C04  41 82 00 0C */	beq lbl_80A76C10
/* 80A76C08  80 9E 00 04 */	lwz r4, 4(r30)
/* 80A76C0C  48 00 00 08 */	b lbl_80A76C14
lbl_80A76C10:
/* 80A76C10  38 80 FF FF */	li r4, -1
lbl_80A76C14:
/* 80A76C14  38 A0 FF 09 */	li r5, -247
/* 80A76C18  38 DE 16 28 */	addi r6, r30, 0x1628
/* 80A76C1C  39 1E 0D 78 */	addi r8, r30, 0xd78
/* 80A76C20  39 20 00 00 */	li r9, 0
/* 80A76C24  39 40 FF FF */	li r10, -1
/* 80A76C28  4B 5A 32 C9 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80A76C2C  90 7E 15 C0 */	stw r3, 0x15c0(r30)
lbl_80A76C30:
/* 80A76C30  80 7E 15 C0 */	lwz r3, 0x15c0(r30)
/* 80A76C34  38 81 00 10 */	addi r4, r1, 0x10
/* 80A76C38  4B 5A 2D 85 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80A76C3C  2C 03 00 00 */	cmpwi r3, 0
/* 80A76C40  41 82 00 24 */	beq lbl_80A76C64
/* 80A76C44  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80A76C48  28 04 00 00 */	cmplwi r4, 0
/* 80A76C4C  41 82 00 18 */	beq lbl_80A76C64
/* 80A76C50  38 7E 15 C8 */	addi r3, r30, 0x15c8
/* 80A76C54  4B 6C EA 8D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A76C58  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80A76C5C  38 63 06 14 */	addi r3, r3, 0x614
/* 80A76C60  4B 73 0C CD */	bl dKy_plight_cut__FP15LIGHT_INFLUENCE
lbl_80A76C64:
/* 80A76C64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A76C68  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A76C6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A76C70  7C 08 03 A6 */	mtlr r0
/* 80A76C74  38 21 00 20 */	addi r1, r1, 0x20
/* 80A76C78  4E 80 00 20 */	blr 
