lbl_802E1B60:
/* 802E1B60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E1B64  7C 08 02 A6 */	mflr r0
/* 802E1B68  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E1B6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E1B70  3C 60 80 43 */	lis r3, lit_525@ha /* 0x804343D8@ha */
/* 802E1B74  3B E3 43 D8 */	addi r31, r3, lit_525@l /* 0x804343D8@l */
/* 802E1B78  38 7F 00 0C */	addi r3, r31, 0xc
/* 802E1B7C  38 80 00 00 */	li r4, 0
/* 802E1B80  4B FF A2 F5 */	bl __ct__10JSUPtrListFb
/* 802E1B84  38 7F 00 0C */	addi r3, r31, 0xc
/* 802E1B88  3C 80 80 2E */	lis r4, func_802E1D08@ha /* 0x802E1D08@ha */
/* 802E1B8C  38 84 1D 08 */	addi r4, r4, func_802E1D08@l /* 0x802E1D08@l */
/* 802E1B90  38 BF 00 00 */	addi r5, r31, 0
/* 802E1B94  48 08 00 91 */	bl __register_global_object
/* 802E1B98  38 7F 00 48 */	addi r3, r31, 0x48
/* 802E1B9C  3C 80 80 2E */	lis r4, __ct__Q210JUTGamePad7CButtonFv@ha /* 0x802E1CD8@ha */
/* 802E1BA0  38 84 1C D8 */	addi r4, r4, __ct__Q210JUTGamePad7CButtonFv@l /* 0x802E1CD8@l */
/* 802E1BA4  38 A0 00 00 */	li r5, 0
/* 802E1BA8  38 C0 00 30 */	li r6, 0x30
/* 802E1BAC  38 E0 00 04 */	li r7, 4
/* 802E1BB0  48 08 01 B1 */	bl __construct_array
/* 802E1BB4  38 7F 01 08 */	addi r3, r31, 0x108
/* 802E1BB8  3C 80 80 2E */	lis r4, __ct__Q210JUTGamePad6CStickFv@ha /* 0x802E1CA8@ha */
/* 802E1BBC  38 84 1C A8 */	addi r4, r4, __ct__Q210JUTGamePad6CStickFv@l /* 0x802E1CA8@l */
/* 802E1BC0  38 A0 00 00 */	li r5, 0
/* 802E1BC4  38 C0 00 10 */	li r6, 0x10
/* 802E1BC8  38 E0 00 04 */	li r7, 4
/* 802E1BCC  48 08 01 95 */	bl __construct_array
/* 802E1BD0  38 7F 01 48 */	addi r3, r31, 0x148
/* 802E1BD4  3C 80 80 2E */	lis r4, __ct__Q210JUTGamePad6CStickFv@ha /* 0x802E1CA8@ha */
/* 802E1BD8  38 84 1C A8 */	addi r4, r4, __ct__Q210JUTGamePad6CStickFv@l /* 0x802E1CA8@l */
/* 802E1BDC  38 A0 00 00 */	li r5, 0
/* 802E1BE0  38 C0 00 10 */	li r6, 0x10
/* 802E1BE4  38 E0 00 04 */	li r7, 4
/* 802E1BE8  48 08 01 79 */	bl __construct_array
/* 802E1BEC  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 802E1BF0  80 03 00 F8 */	lwz r0, 0x00F8(r3)  /* 0x800000F8@l */
/* 802E1BF4  54 03 F0 BE */	srwi r3, r0, 2
/* 802E1BF8  38 00 00 3C */	li r0, 0x3c
/* 802E1BFC  7C A3 03 96 */	divwu r5, r3, r0
/* 802E1C00  38 80 00 00 */	li r4, 0
/* 802E1C04  38 60 00 1E */	li r3, 0x1e
/* 802E1C08  7C 05 18 16 */	mulhwu r0, r5, r3
/* 802E1C0C  7C 64 19 D6 */	mullw r3, r4, r3
/* 802E1C10  1C 85 00 1E */	mulli r4, r5, 0x1e
/* 802E1C14  7C 00 1A 14 */	add r0, r0, r3
/* 802E1C18  90 8D 8F 7C */	stw r4, data_804514FC(r13)
/* 802E1C1C  90 0D 8F 78 */	stw r0, sThreshold__Q210JUTGamePad13C3ButtonReset(r13)
/* 802E1C20  38 7F 01 94 */	addi r3, r31, 0x194
/* 802E1C24  38 80 00 00 */	li r4, 0
/* 802E1C28  4B FF A2 4D */	bl __ct__10JSUPtrListFb
/* 802E1C2C  38 7F 01 94 */	addi r3, r31, 0x194
/* 802E1C30  3C 80 80 2E */	lis r4, func_802E1C54@ha /* 0x802E1C54@ha */
/* 802E1C34  38 84 1C 54 */	addi r4, r4, func_802E1C54@l /* 0x802E1C54@l */
/* 802E1C38  38 BF 01 88 */	addi r5, r31, 0x188
/* 802E1C3C  48 07 FF E9 */	bl __register_global_object
/* 802E1C40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E1C44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E1C48  7C 08 03 A6 */	mtlr r0
/* 802E1C4C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E1C50  4E 80 00 20 */	blr 
