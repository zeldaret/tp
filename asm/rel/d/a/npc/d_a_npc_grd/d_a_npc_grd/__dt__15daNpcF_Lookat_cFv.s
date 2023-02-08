lbl_809D3194:
/* 809D3194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D3198  7C 08 02 A6 */	mflr r0
/* 809D319C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D31A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D31A4  93 C1 00 08 */	stw r30, 8(r1)
/* 809D31A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 809D31AC  7C 9F 23 78 */	mr r31, r4
/* 809D31B0  41 82 00 98 */	beq lbl_809D3248
/* 809D31B4  3C 60 80 9D */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x809D3E90@ha */
/* 809D31B8  38 03 3E 90 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x809D3E90@l */
/* 809D31BC  90 1E 00 98 */	stw r0, 0x98(r30)
/* 809D31C0  38 7E 00 7C */	addi r3, r30, 0x7c
/* 809D31C4  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha /* 0x809D3264@ha */
/* 809D31C8  38 84 32 64 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809D3264@l */
/* 809D31CC  38 A0 00 06 */	li r5, 6
/* 809D31D0  38 C0 00 04 */	li r6, 4
/* 809D31D4  4B 98 EB 15 */	bl __destroy_arr
/* 809D31D8  38 7E 00 64 */	addi r3, r30, 0x64
/* 809D31DC  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha /* 0x809D3264@ha */
/* 809D31E0  38 84 32 64 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809D3264@l */
/* 809D31E4  38 A0 00 06 */	li r5, 6
/* 809D31E8  38 C0 00 04 */	li r6, 4
/* 809D31EC  4B 98 EA FD */	bl __destroy_arr
/* 809D31F0  38 7E 00 4C */	addi r3, r30, 0x4c
/* 809D31F4  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha /* 0x809D3264@ha */
/* 809D31F8  38 84 32 64 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809D3264@l */
/* 809D31FC  38 A0 00 06 */	li r5, 6
/* 809D3200  38 C0 00 04 */	li r6, 4
/* 809D3204  4B 98 EA E5 */	bl __destroy_arr
/* 809D3208  38 7E 00 34 */	addi r3, r30, 0x34
/* 809D320C  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha /* 0x809D3264@ha */
/* 809D3210  38 84 32 64 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809D3264@l */
/* 809D3214  38 A0 00 06 */	li r5, 6
/* 809D3218  38 C0 00 04 */	li r6, 4
/* 809D321C  4B 98 EA CD */	bl __destroy_arr
/* 809D3220  7F C3 F3 78 */	mr r3, r30
/* 809D3224  3C 80 80 9D */	lis r4, __dt__4cXyzFv@ha /* 0x809D32A4@ha */
/* 809D3228  38 84 32 A4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809D32A4@l */
/* 809D322C  38 A0 00 0C */	li r5, 0xc
/* 809D3230  38 C0 00 04 */	li r6, 4
/* 809D3234  4B 98 EA B5 */	bl __destroy_arr
/* 809D3238  7F E0 07 35 */	extsh. r0, r31
/* 809D323C  40 81 00 0C */	ble lbl_809D3248
/* 809D3240  7F C3 F3 78 */	mr r3, r30
/* 809D3244  4B 8F BA F9 */	bl __dl__FPv
lbl_809D3248:
/* 809D3248  7F C3 F3 78 */	mr r3, r30
/* 809D324C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D3250  83 C1 00 08 */	lwz r30, 8(r1)
/* 809D3254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D3258  7C 08 03 A6 */	mtlr r0
/* 809D325C  38 21 00 10 */	addi r1, r1, 0x10
/* 809D3260  4E 80 00 20 */	blr 
