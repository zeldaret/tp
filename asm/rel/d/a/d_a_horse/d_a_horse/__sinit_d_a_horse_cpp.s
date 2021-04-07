lbl_80844C0C:
/* 80844C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80844C10  7C 08 02 A6 */	mflr r0
/* 80844C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80844C18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80844C1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80844C20  3C 60 80 84 */	lis r3, lit_1109@ha /* 0x80845BB8@ha */
/* 80844C24  3B C3 5B B8 */	addi r30, r3, lit_1109@l /* 0x80845BB8@l */
/* 80844C28  3C 60 80 84 */	lis r3, lit_3894@ha /* 0x808454AC@ha */
/* 80844C2C  3B E3 54 AC */	addi r31, r3, lit_3894@l /* 0x808454AC@l */
/* 80844C30  C0 1F 03 A4 */	lfs f0, 0x3a4(r31)
/* 80844C34  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 80844C38  C0 1F 03 A8 */	lfs f0, 0x3a8(r31)
/* 80844C3C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80844C40  D0 03 00 04 */	stfs f0, 4(r3)
/* 80844C44  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80844C48  D0 03 00 08 */	stfs f0, 8(r3)
/* 80844C4C  3C 80 80 84 */	lis r4, __dt__4cXyzFv@ha /* 0x8083836C@ha */
/* 80844C50  38 84 83 6C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8083836C@l */
/* 80844C54  38 BE 00 40 */	addi r5, r30, 0x40
/* 80844C58  4B FF 32 61 */	bl __register_global_object
/* 80844C5C  C0 1F 03 AC */	lfs f0, 0x3ac(r31)
/* 80844C60  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 80844C64  C0 1F 01 F4 */	lfs f0, 0x1f4(r31)
/* 80844C68  38 7E 00 64 */	addi r3, r30, 0x64
/* 80844C6C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80844C70  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80844C74  D0 03 00 08 */	stfs f0, 8(r3)
/* 80844C78  3C 80 80 84 */	lis r4, __dt__4cXyzFv@ha /* 0x8083836C@ha */
/* 80844C7C  38 84 83 6C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8083836C@l */
/* 80844C80  38 BE 00 58 */	addi r5, r30, 0x58
/* 80844C84  4B FF 32 35 */	bl __register_global_object
/* 80844C88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80844C8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80844C90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80844C94  7C 08 03 A6 */	mtlr r0
/* 80844C98  38 21 00 10 */	addi r1, r1, 0x10
/* 80844C9C  4E 80 00 20 */	blr 
