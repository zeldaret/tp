lbl_80570B8C:
/* 80570B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570B90  7C 08 02 A6 */	mflr r0
/* 80570B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570B98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80570B9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80570BA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80570BA4  7C 9E 23 78 */	mr r30, r4
/* 80570BA8  41 82 00 C4 */	beq lbl_80570C6C
/* 80570BAC  3C 60 80 57 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80570BB0  38 03 34 64 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80570BB4  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80570BB8  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80570BBC  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha
/* 80570BC0  38 84 05 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80570BC4  38 A0 00 0C */	li r5, 0xc
/* 80570BC8  38 C0 00 03 */	li r6, 3
/* 80570BCC  4B DF 11 1C */	b __destroy_arr
/* 80570BD0  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80570BD4  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha
/* 80570BD8  38 84 05 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80570BDC  38 A0 00 0C */	li r5, 0xc
/* 80570BE0  38 C0 00 03 */	li r6, 3
/* 80570BE4  4B DF 11 04 */	b __destroy_arr
/* 80570BE8  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80570BEC  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha
/* 80570BF0  38 84 05 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80570BF4  38 A0 00 0C */	li r5, 0xc
/* 80570BF8  38 C0 00 03 */	li r6, 3
/* 80570BFC  4B DF 10 EC */	b __destroy_arr
/* 80570C00  38 7F 00 78 */	addi r3, r31, 0x78
/* 80570C04  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha
/* 80570C08  38 84 05 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80570C0C  38 A0 00 0C */	li r5, 0xc
/* 80570C10  38 C0 00 03 */	li r6, 3
/* 80570C14  4B DF 10 D4 */	b __destroy_arr
/* 80570C18  38 7F 00 54 */	addi r3, r31, 0x54
/* 80570C1C  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha
/* 80570C20  38 84 05 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80570C24  38 A0 00 0C */	li r5, 0xc
/* 80570C28  38 C0 00 03 */	li r6, 3
/* 80570C2C  4B DF 10 BC */	b __destroy_arr
/* 80570C30  38 7F 00 30 */	addi r3, r31, 0x30
/* 80570C34  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha
/* 80570C38  38 84 05 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80570C3C  38 A0 00 0C */	li r5, 0xc
/* 80570C40  38 C0 00 03 */	li r6, 3
/* 80570C44  4B DF 10 A4 */	b __destroy_arr
/* 80570C48  28 1F 00 00 */	cmplwi r31, 0
/* 80570C4C  41 82 00 10 */	beq lbl_80570C5C
/* 80570C50  3C 60 80 57 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80570C54  38 03 34 58 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80570C58  90 1F 00 04 */	stw r0, 4(r31)
lbl_80570C5C:
/* 80570C5C  7F C0 07 35 */	extsh. r0, r30
/* 80570C60  40 81 00 0C */	ble lbl_80570C6C
/* 80570C64  7F E3 FB 78 */	mr r3, r31
/* 80570C68  4B D5 E0 D4 */	b __dl__FPv
lbl_80570C6C:
/* 80570C6C  7F E3 FB 78 */	mr r3, r31
/* 80570C70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80570C74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80570C78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570C7C  7C 08 03 A6 */	mtlr r0
/* 80570C80  38 21 00 10 */	addi r1, r1, 0x10
/* 80570C84  4E 80 00 20 */	blr 
