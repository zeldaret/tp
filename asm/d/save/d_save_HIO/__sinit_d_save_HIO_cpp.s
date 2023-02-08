lbl_8025C5FC:
/* 8025C5FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025C600  7C 08 02 A6 */	mflr r0
/* 8025C604  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025C608  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025C60C  3C 60 80 3C */	lis r3, __vt__12dSvBit_HIO_c@ha /* 0x803C33B4@ha */
/* 8025C610  38 03 33 B4 */	addi r0, r3, __vt__12dSvBit_HIO_c@l /* 0x803C33B4@l */
/* 8025C614  3C 60 80 43 */	lis r3, g_save_bit_HIO@ha /* 0x804307EC@ha */
/* 8025C618  3B E3 07 EC */	addi r31, r3, g_save_bit_HIO@l /* 0x804307EC@l */
/* 8025C61C  90 1F 00 00 */	stw r0, 0(r31)
/* 8025C620  3C 60 80 3C */	lis r3, __vt__23dSvBit_childSwitchHIO_c@ha /* 0x803C33A8@ha */
/* 8025C624  38 03 33 A8 */	addi r0, r3, __vt__23dSvBit_childSwitchHIO_c@l /* 0x803C33A8@l */
/* 8025C628  90 1F 00 08 */	stw r0, 8(r31)
/* 8025C62C  38 7F 00 10 */	addi r3, r31, 0x10
/* 8025C630  4B FF F5 49 */	bl __ct__29dSvBit_childSwPerfectionHIO_cFv
/* 8025C634  38 7F 01 18 */	addi r3, r31, 0x118
/* 8025C638  4B FF F5 DD */	bl __ct__26dSvBit_childSwDungeonHIO_cFv
/* 8025C63C  38 7F 01 A0 */	addi r3, r31, 0x1a0
/* 8025C640  4B FF F6 71 */	bl __ct__23dSvBit_childSwZoneHIO_cFv
/* 8025C644  38 7F 01 E8 */	addi r3, r31, 0x1e8
/* 8025C648  4B FF F6 C9 */	bl __ct__26dSvBit_childSwOneZoneHIO_cFv
/* 8025C64C  3C 60 80 43 */	lis r3, g_save_bit_HIO@ha /* 0x804307EC@ha */
/* 8025C650  3B E3 07 EC */	addi r31, r3, g_save_bit_HIO@l /* 0x804307EC@l */
/* 8025C654  3C 60 80 3C */	lis r3, __vt__21dSvBit_childItemHIO_c@ha /* 0x803C339C@ha */
/* 8025C658  38 03 33 9C */	addi r0, r3, __vt__21dSvBit_childItemHIO_c@l /* 0x803C339C@l */
/* 8025C65C  90 1F 02 10 */	stw r0, 0x210(r31)
/* 8025C660  38 7F 02 18 */	addi r3, r31, 0x218
/* 8025C664  4B FF F7 0D */	bl __ct__29dSvBit_childItPerfectionHIO_cFv
/* 8025C668  38 7F 02 60 */	addi r3, r31, 0x260
/* 8025C66C  4B FF F7 A1 */	bl __ct__26dSvBit_childItDungeonHIO_cFv
/* 8025C670  38 7F 03 68 */	addi r3, r31, 0x368
/* 8025C674  4B FF F8 35 */	bl __ct__23dSvBit_childItZoneHIO_cFv
/* 8025C678  38 7F 03 B0 */	addi r3, r31, 0x3b0
/* 8025C67C  4B FF F8 8D */	bl __ct__26dSvBit_childItOneZoneHIO_cFv
/* 8025C680  3C 60 80 43 */	lis r3, g_save_bit_HIO@ha /* 0x804307EC@ha */
/* 8025C684  38 83 07 EC */	addi r4, r3, g_save_bit_HIO@l /* 0x804307EC@l */
/* 8025C688  3C 60 80 3C */	lis r3, __vt__25dSvBit_childTreasureHIO_c@ha /* 0x803C3390@ha */
/* 8025C68C  38 03 33 90 */	addi r0, r3, __vt__25dSvBit_childTreasureHIO_c@l /* 0x803C3390@l */
/* 8025C690  90 04 03 D8 */	stw r0, 0x3d8(r4)
/* 8025C694  38 64 03 E0 */	addi r3, r4, 0x3e0
/* 8025C698  4B FF F8 D1 */	bl __ct__29dSvBit_childTbPerfectionHIO_cFv
/* 8025C69C  3C 60 80 43 */	lis r3, g_save_bit_HIO@ha /* 0x804307EC@ha */
/* 8025C6A0  38 63 07 EC */	addi r3, r3, g_save_bit_HIO@l /* 0x804307EC@l */
/* 8025C6A4  38 63 04 68 */	addi r3, r3, 0x468
/* 8025C6A8  4B FF F9 5D */	bl __ct__25dSvBit_childDarknessHIO_cFv
/* 8025C6AC  3C 60 80 43 */	lis r3, g_save_bit_HIO@ha /* 0x804307EC@ha */
/* 8025C6B0  38 63 07 EC */	addi r3, r3, g_save_bit_HIO@l /* 0x804307EC@l */
/* 8025C6B4  38 63 04 7C */	addi r3, r3, 0x47c
/* 8025C6B8  4B FF F9 E9 */	bl __ct__26dSvBit_childTransformHIO_cFv
/* 8025C6BC  3C 60 80 43 */	lis r3, g_save_bit_HIO@ha /* 0x804307EC@ha */
/* 8025C6C0  38 63 07 EC */	addi r3, r3, g_save_bit_HIO@l /* 0x804307EC@l */
/* 8025C6C4  38 63 04 8C */	addi r3, r3, 0x48c
/* 8025C6C8  4B FF FA 75 */	bl __ct__22dSvBit_childOtherHIO_cFv
/* 8025C6CC  3C 60 80 43 */	lis r3, g_save_bit_HIO@ha /* 0x804307EC@ha */
/* 8025C6D0  38 63 07 EC */	addi r3, r3, g_save_bit_HIO@l /* 0x804307EC@l */
/* 8025C6D4  3C 80 80 26 */	lis r4, __dt__12dSvBit_HIO_cFv@ha /* 0x8025C6FC@ha */
/* 8025C6D8  38 84 C6 FC */	addi r4, r4, __dt__12dSvBit_HIO_cFv@l /* 0x8025C6FC@l */
/* 8025C6DC  3C A0 80 43 */	lis r5, lit_3659@ha /* 0x804307E0@ha */
/* 8025C6E0  38 A5 07 E0 */	addi r5, r5, lit_3659@l /* 0x804307E0@l */
/* 8025C6E4  48 10 55 41 */	bl __register_global_object
/* 8025C6E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025C6EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025C6F0  7C 08 03 A6 */	mtlr r0
/* 8025C6F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8025C6F8  4E 80 00 20 */	blr 
