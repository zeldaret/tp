lbl_809E30A4:
/* 809E30A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E30A8  7C 08 02 A6 */	mflr r0
/* 809E30AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E30B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E30B4  93 C1 00 08 */	stw r30, 8(r1)
/* 809E30B8  7C 7E 1B 79 */	or. r30, r3, r3
/* 809E30BC  7C 9F 23 78 */	mr r31, r4
/* 809E30C0  41 82 00 98 */	beq lbl_809E3158
/* 809E30C4  3C 60 80 9E */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x809E3ED4@ha */
/* 809E30C8  38 03 3E D4 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x809E3ED4@l */
/* 809E30CC  90 1E 00 98 */	stw r0, 0x98(r30)
/* 809E30D0  38 7E 00 7C */	addi r3, r30, 0x7c
/* 809E30D4  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha /* 0x809E3174@ha */
/* 809E30D8  38 84 31 74 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809E3174@l */
/* 809E30DC  38 A0 00 06 */	li r5, 6
/* 809E30E0  38 C0 00 04 */	li r6, 4
/* 809E30E4  4B 97 EC 05 */	bl __destroy_arr
/* 809E30E8  38 7E 00 64 */	addi r3, r30, 0x64
/* 809E30EC  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha /* 0x809E3174@ha */
/* 809E30F0  38 84 31 74 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809E3174@l */
/* 809E30F4  38 A0 00 06 */	li r5, 6
/* 809E30F8  38 C0 00 04 */	li r6, 4
/* 809E30FC  4B 97 EB ED */	bl __destroy_arr
/* 809E3100  38 7E 00 4C */	addi r3, r30, 0x4c
/* 809E3104  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha /* 0x809E3174@ha */
/* 809E3108  38 84 31 74 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809E3174@l */
/* 809E310C  38 A0 00 06 */	li r5, 6
/* 809E3110  38 C0 00 04 */	li r6, 4
/* 809E3114  4B 97 EB D5 */	bl __destroy_arr
/* 809E3118  38 7E 00 34 */	addi r3, r30, 0x34
/* 809E311C  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha /* 0x809E3174@ha */
/* 809E3120  38 84 31 74 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809E3174@l */
/* 809E3124  38 A0 00 06 */	li r5, 6
/* 809E3128  38 C0 00 04 */	li r6, 4
/* 809E312C  4B 97 EB BD */	bl __destroy_arr
/* 809E3130  7F C3 F3 78 */	mr r3, r30
/* 809E3134  3C 80 80 9E */	lis r4, __dt__4cXyzFv@ha /* 0x809E31B4@ha */
/* 809E3138  38 84 31 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809E31B4@l */
/* 809E313C  38 A0 00 0C */	li r5, 0xc
/* 809E3140  38 C0 00 04 */	li r6, 4
/* 809E3144  4B 97 EB A5 */	bl __destroy_arr
/* 809E3148  7F E0 07 35 */	extsh. r0, r31
/* 809E314C  40 81 00 0C */	ble lbl_809E3158
/* 809E3150  7F C3 F3 78 */	mr r3, r30
/* 809E3154  4B 8E BB E9 */	bl __dl__FPv
lbl_809E3158:
/* 809E3158  7F C3 F3 78 */	mr r3, r30
/* 809E315C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E3160  83 C1 00 08 */	lwz r30, 8(r1)
/* 809E3164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E3168  7C 08 03 A6 */	mtlr r0
/* 809E316C  38 21 00 10 */	addi r1, r1, 0x10
/* 809E3170  4E 80 00 20 */	blr 
