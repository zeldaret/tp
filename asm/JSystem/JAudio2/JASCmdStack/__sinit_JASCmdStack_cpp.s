lbl_8029116C:
/* 8029116C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80291170  7C 08 02 A6 */	mflr r0
/* 80291174  90 01 00 14 */	stw r0, 0x14(r1)
/* 80291178  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029117C  3C 60 80 43 */	lis r3, lit_80@ha /* 0x80431678@ha */
/* 80291180  3B E3 16 78 */	addi r31, r3, lit_80@l /* 0x80431678@l */
/* 80291184  38 7F 00 0C */	addi r3, r31, 0xc
/* 80291188  48 04 AD 8D */	bl initiate__10JSUPtrListFv
/* 8029118C  38 7F 00 0C */	addi r3, r31, 0xc
/* 80291190  3C 80 80 29 */	lis r4, __dt__Q210JASPortCmd9TPortHeadFv@ha /* 0x802911D0@ha */
/* 80291194  38 84 11 D0 */	addi r4, r4, __dt__Q210JASPortCmd9TPortHeadFv@l /* 0x802911D0@l */
/* 80291198  38 BF 00 00 */	addi r5, r31, 0
/* 8029119C  48 0D 0A 89 */	bl __register_global_object
/* 802911A0  38 7F 00 24 */	addi r3, r31, 0x24
/* 802911A4  48 04 AD 71 */	bl initiate__10JSUPtrListFv
/* 802911A8  38 7F 00 24 */	addi r3, r31, 0x24
/* 802911AC  3C 80 80 29 */	lis r4, __dt__Q210JASPortCmd9TPortHeadFv@ha /* 0x802911D0@ha */
/* 802911B0  38 84 11 D0 */	addi r4, r4, __dt__Q210JASPortCmd9TPortHeadFv@l /* 0x802911D0@l */
/* 802911B4  38 BF 00 18 */	addi r5, r31, 0x18
/* 802911B8  48 0D 0A 6D */	bl __register_global_object
/* 802911BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802911C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802911C4  7C 08 03 A6 */	mtlr r0
/* 802911C8  38 21 00 10 */	addi r1, r1, 0x10
/* 802911CC  4E 80 00 20 */	blr 
