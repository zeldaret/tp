lbl_80BB6B5C:
/* 80BB6B5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB6B60  7C 08 02 A6 */	mflr r0
/* 80BB6B64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB6B68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB6B6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BB6B70  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BB6B74  7C 9F 23 78 */	mr r31, r4
/* 80BB6B78  41 82 00 B8 */	beq lbl_80BB6C30
/* 80BB6B7C  3C 60 80 BC */	lis r3, __vt__11daBkyRock_c@ha /* 0x80BB80D8@ha */
/* 80BB6B80  38 03 80 D8 */	addi r0, r3, __vt__11daBkyRock_c@l /* 0x80BB80D8@l */
/* 80BB6B84  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80BB6B88  7F C3 F3 78 */	mr r3, r30
/* 80BB6B8C  41 82 00 08 */	beq lbl_80BB6B94
/* 80BB6B90  38 63 05 68 */	addi r3, r3, 0x568
lbl_80BB6B94:
/* 80BB6B94  3C 80 80 BC */	lis r4, l_arcName@ha /* 0x80BB803C@ha */
/* 80BB6B98  38 84 80 3C */	addi r4, r4, l_arcName@l /* 0x80BB803C@l */
/* 80BB6B9C  80 84 00 00 */	lwz r4, 0(r4)
/* 80BB6BA0  4B 47 64 69 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BB6BA4  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 80BB6BA8  3C 80 80 BB */	lis r4, __dt__8dCcD_CylFv@ha /* 0x80BB6920@ha */
/* 80BB6BAC  38 84 69 20 */	addi r4, r4, __dt__8dCcD_CylFv@l /* 0x80BB6920@l */
/* 80BB6BB0  38 A0 01 3C */	li r5, 0x13c
/* 80BB6BB4  38 C0 00 02 */	li r6, 2
/* 80BB6BB8  4B 7A B1 31 */	bl __destroy_arr
/* 80BB6BBC  34 1E 05 B0 */	addic. r0, r30, 0x5b0
/* 80BB6BC0  41 82 00 54 */	beq lbl_80BB6C14
/* 80BB6BC4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BB6BC8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BB6BCC  90 7E 05 C8 */	stw r3, 0x5c8(r30)
/* 80BB6BD0  38 03 00 20 */	addi r0, r3, 0x20
/* 80BB6BD4  90 1E 05 CC */	stw r0, 0x5cc(r30)
/* 80BB6BD8  34 1E 05 CC */	addic. r0, r30, 0x5cc
/* 80BB6BDC  41 82 00 24 */	beq lbl_80BB6C00
/* 80BB6BE0  3C 60 80 BC */	lis r3, __vt__10dCcD_GStts@ha /* 0x80BB80F0@ha */
/* 80BB6BE4  38 03 80 F0 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80BB80F0@l */
/* 80BB6BE8  90 1E 05 CC */	stw r0, 0x5cc(r30)
/* 80BB6BEC  34 1E 05 CC */	addic. r0, r30, 0x5cc
/* 80BB6BF0  41 82 00 10 */	beq lbl_80BB6C00
/* 80BB6BF4  3C 60 80 BC */	lis r3, __vt__10cCcD_GStts@ha /* 0x80BB80E4@ha */
/* 80BB6BF8  38 03 80 E4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80BB80E4@l */
/* 80BB6BFC  90 1E 05 CC */	stw r0, 0x5cc(r30)
lbl_80BB6C00:
/* 80BB6C00  34 1E 05 B0 */	addic. r0, r30, 0x5b0
/* 80BB6C04  41 82 00 10 */	beq lbl_80BB6C14
/* 80BB6C08  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BB6C0C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BB6C10  90 1E 05 C8 */	stw r0, 0x5c8(r30)
lbl_80BB6C14:
/* 80BB6C14  7F C3 F3 78 */	mr r3, r30
/* 80BB6C18  38 80 00 00 */	li r4, 0
/* 80BB6C1C  4B 46 20 71 */	bl __dt__10fopAc_ac_cFv
/* 80BB6C20  7F E0 07 35 */	extsh. r0, r31
/* 80BB6C24  40 81 00 0C */	ble lbl_80BB6C30
/* 80BB6C28  7F C3 F3 78 */	mr r3, r30
/* 80BB6C2C  4B 71 81 11 */	bl __dl__FPv
lbl_80BB6C30:
/* 80BB6C30  7F C3 F3 78 */	mr r3, r30
/* 80BB6C34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB6C38  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BB6C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB6C40  7C 08 03 A6 */	mtlr r0
/* 80BB6C44  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB6C48  4E 80 00 20 */	blr 
