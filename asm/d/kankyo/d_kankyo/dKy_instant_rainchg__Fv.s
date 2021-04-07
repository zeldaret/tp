lbl_801A8BC8:
/* 801A8BC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A8BCC  7C 08 02 A6 */	mflr r0
/* 801A8BD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A8BD4  38 60 00 FA */	li r3, 0xfa
/* 801A8BD8  4B EB 2A 75 */	bl dKyw_rain_set__Fi
/* 801A8BDC  38 00 00 01 */	li r0, 1
/* 801A8BE0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A8BE4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A8BE8  98 03 12 C8 */	stb r0, 0x12c8(r3)
/* 801A8BEC  98 03 12 C2 */	stb r0, 0x12c2(r3)
/* 801A8BF0  98 03 12 C3 */	stb r0, 0x12c3(r3)
/* 801A8BF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A8BF8  7C 08 03 A6 */	mtlr r0
/* 801A8BFC  38 21 00 10 */	addi r1, r1, 0x10
/* 801A8C00  4E 80 00 20 */	blr 
