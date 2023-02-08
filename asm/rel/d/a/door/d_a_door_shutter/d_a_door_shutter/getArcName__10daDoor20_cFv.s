lbl_80460BA4:
/* 80460BA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80460BA8  7C 08 02 A6 */	mflr r0
/* 80460BAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80460BB0  4B BD 95 D9 */	bl getKind__13door_param2_cFP10fopAc_ac_c
/* 80460BB4  28 03 00 0C */	cmplwi r3, 0xc
/* 80460BB8  41 81 00 1C */	bgt lbl_80460BD4
/* 80460BBC  3C 80 80 46 */	lis r4, lit_3980@ha /* 0x80466E9C@ha */
/* 80460BC0  38 84 6E 9C */	addi r4, r4, lit_3980@l /* 0x80466E9C@l */
/* 80460BC4  54 60 10 3A */	slwi r0, r3, 2
/* 80460BC8  7C 04 00 2E */	lwzx r0, r4, r0
/* 80460BCC  7C 09 03 A6 */	mtctr r0
/* 80460BD0  4E 80 04 20 */	bctr 
lbl_80460BD4:
/* 80460BD4  3C 60 80 46 */	lis r3, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80460BD8  38 63 68 D8 */	addi r3, r3, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80460BDC  38 63 00 15 */	addi r3, r3, 0x15
/* 80460BE0  48 00 00 50 */	b lbl_80460C30
lbl_80460BE4:
/* 80460BE4  3C 60 80 46 */	lis r3, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80460BE8  38 63 68 D8 */	addi r3, r3, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80460BEC  38 63 00 1D */	addi r3, r3, 0x1d
/* 80460BF0  48 00 00 40 */	b lbl_80460C30
lbl_80460BF4:
/* 80460BF4  3C 60 80 46 */	lis r3, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80460BF8  38 63 68 D8 */	addi r3, r3, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80460BFC  38 63 00 25 */	addi r3, r3, 0x25
/* 80460C00  48 00 00 30 */	b lbl_80460C30
lbl_80460C04:
/* 80460C04  3C 60 80 46 */	lis r3, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80460C08  38 63 68 D8 */	addi r3, r3, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80460C0C  38 63 00 2D */	addi r3, r3, 0x2d
/* 80460C10  48 00 00 20 */	b lbl_80460C30
lbl_80460C14:
/* 80460C14  3C 60 80 46 */	lis r3, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80460C18  38 63 68 D8 */	addi r3, r3, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80460C1C  38 63 00 35 */	addi r3, r3, 0x35
/* 80460C20  48 00 00 10 */	b lbl_80460C30
lbl_80460C24:
/* 80460C24  3C 60 80 46 */	lis r3, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80460C28  38 63 68 D8 */	addi r3, r3, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80460C2C  38 63 00 3D */	addi r3, r3, 0x3d
lbl_80460C30:
/* 80460C30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80460C34  7C 08 03 A6 */	mtlr r0
/* 80460C38  38 21 00 10 */	addi r1, r1, 0x10
/* 80460C3C  4E 80 00 20 */	blr 
