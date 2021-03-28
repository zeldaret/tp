lbl_80A99BC0:
/* 80A99BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A99BC4  7C 08 02 A6 */	mflr r0
/* 80A99BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A99BCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A99BD0  93 C1 00 08 */	stw r30, 8(r1)
/* 80A99BD4  7C 7E 1B 78 */	mr r30, r3
/* 80A99BD8  80 04 00 00 */	lwz r0, 0(r4)
/* 80A99BDC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A99BE0  41 82 00 BC */	beq lbl_80A99C9C
/* 80A99BE4  40 80 00 10 */	bge lbl_80A99BF4
/* 80A99BE8  2C 00 00 05 */	cmpwi r0, 5
/* 80A99BEC  41 82 00 14 */	beq lbl_80A99C00
/* 80A99BF0  48 00 00 AC */	b lbl_80A99C9C
lbl_80A99BF4:
/* 80A99BF4  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A99BF8  41 82 00 44 */	beq lbl_80A99C3C
/* 80A99BFC  48 00 00 A0 */	b lbl_80A99C9C
lbl_80A99C00:
/* 80A99C00  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A99C04  2C 00 00 00 */	cmpwi r0, 0
/* 80A99C08  41 82 00 28 */	beq lbl_80A99C30
/* 80A99C0C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A99C10  4B 6A BA EC */	b remove__18daNpcT_ActorMngr_cFv
/* 80A99C14  38 00 00 00 */	li r0, 0
/* 80A99C18  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A99C1C  3C 60 80 AA */	lis r3, lit_4346@ha
/* 80A99C20  C0 03 B9 30 */	lfs f0, lit_4346@l(r3)
/* 80A99C24  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A99C28  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A99C2C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A99C30:
/* 80A99C30  38 00 00 00 */	li r0, 0
/* 80A99C34  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A99C38  48 00 00 64 */	b lbl_80A99C9C
lbl_80A99C3C:
/* 80A99C3C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A99C40  2C 00 00 00 */	cmpwi r0, 0
/* 80A99C44  41 82 00 28 */	beq lbl_80A99C6C
/* 80A99C48  83 FE 0B 80 */	lwz r31, 0xb80(r30)
/* 80A99C4C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A99C50  4B 6A BC 48 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A99C54  93 FE 0B 80 */	stw r31, 0xb80(r30)
/* 80A99C58  38 00 00 00 */	li r0, 0
/* 80A99C5C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A99C60  3C 60 80 AA */	lis r3, lit_4673@ha
/* 80A99C64  C0 03 B9 4C */	lfs f0, lit_4673@l(r3)
/* 80A99C68  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80A99C6C:
/* 80A99C6C  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A99C70  2C 00 00 01 */	cmpwi r0, 1
/* 80A99C74  41 82 00 28 */	beq lbl_80A99C9C
/* 80A99C78  83 FE 0B 5C */	lwz r31, 0xb5c(r30)
/* 80A99C7C  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A99C80  4B 6A BC 18 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A99C84  93 FE 0B 5C */	stw r31, 0xb5c(r30)
/* 80A99C88  38 00 00 01 */	li r0, 1
/* 80A99C8C  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A99C90  3C 60 80 AA */	lis r3, lit_4673@ha
/* 80A99C94  C0 03 B9 4C */	lfs f0, lit_4673@l(r3)
/* 80A99C98  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A99C9C:
/* 80A99C9C  38 60 00 01 */	li r3, 1
/* 80A99CA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A99CA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A99CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A99CAC  7C 08 03 A6 */	mtlr r0
/* 80A99CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A99CB4  4E 80 00 20 */	blr 
