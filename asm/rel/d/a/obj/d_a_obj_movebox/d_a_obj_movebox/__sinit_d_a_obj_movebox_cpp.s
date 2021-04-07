lbl_80480CF4:
/* 80480CF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80480CF8  7C 08 02 A6 */	mflr r0
/* 80480CFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80480D00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80480D04  3C 60 80 48 */	lis r3, lit_1109@ha /* 0x80481888@ha */
/* 80480D08  3B E3 18 88 */	addi r31, r3, lit_1109@l /* 0x80481888@l */
/* 80480D0C  38 7F 00 4C */	addi r3, r31, 0x4c
/* 80480D10  3C 80 80 48 */	lis r4, __ct__14dBgS_ObjGndChkFv@ha /* 0x80480E88@ha */
/* 80480D14  38 84 0E 88 */	addi r4, r4, __ct__14dBgS_ObjGndChkFv@l /* 0x80480E88@l */
/* 80480D18  3C A0 80 48 */	lis r5, __dt__14dBgS_ObjGndChkFv@ha /* 0x8047FEE4@ha */
/* 80480D1C  38 A5 FE E4 */	addi r5, r5, __dt__14dBgS_ObjGndChkFv@l /* 0x8047FEE4@l */
/* 80480D20  38 C0 00 54 */	li r6, 0x54
/* 80480D24  38 E0 00 17 */	li r7, 0x17
/* 80480D28  4B EE 10 39 */	bl __construct_array
/* 80480D2C  38 60 00 00 */	li r3, 0
/* 80480D30  3C 80 80 48 */	lis r4, func_80480E50@ha /* 0x80480E50@ha */
/* 80480D34  38 84 0E 50 */	addi r4, r4, func_80480E50@l /* 0x80480E50@l */
/* 80480D38  38 BF 00 40 */	addi r5, r31, 0x40
/* 80480D3C  4B FF CD 3D */	bl __register_global_object
/* 80480D40  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80480D44  4B BF 84 21 */	bl __ct__11dBgS_WtrChkFv
/* 80480D48  3C 80 80 48 */	lis r4, __dt__11dBgS_WtrChkFv@ha /* 0x80480DD8@ha */
/* 80480D4C  38 84 0D D8 */	addi r4, r4, __dt__11dBgS_WtrChkFv@l /* 0x80480DD8@l */
/* 80480D50  38 BF 07 D8 */	addi r5, r31, 0x7d8
/* 80480D54  4B FF CD 25 */	bl __register_global_object
/* 80480D58  38 7F 08 44 */	addi r3, r31, 0x844
/* 80480D5C  3C 80 80 07 */	lis r4, __ct__14dBgS_ObjLinChkFv@ha /* 0x80077F5C@ha */
/* 80480D60  38 84 7F 5C */	addi r4, r4, __ct__14dBgS_ObjLinChkFv@l /* 0x80077F5C@l */
/* 80480D64  3C A0 80 07 */	lis r5, __dt__14dBgS_ObjLinChkFv@ha /* 0x80077FB8@ha */
/* 80480D68  38 A5 7F B8 */	addi r5, r5, __dt__14dBgS_ObjLinChkFv@l /* 0x80077FB8@l */
/* 80480D6C  38 C0 00 70 */	li r6, 0x70
/* 80480D70  38 E0 00 17 */	li r7, 0x17
/* 80480D74  4B EE 0F ED */	bl __construct_array
/* 80480D78  38 60 00 00 */	li r3, 0
/* 80480D7C  3C 80 80 48 */	lis r4, func_80480DA0@ha /* 0x80480DA0@ha */
/* 80480D80  38 84 0D A0 */	addi r4, r4, func_80480DA0@l /* 0x80480DA0@l */
/* 80480D84  38 BF 08 38 */	addi r5, r31, 0x838
/* 80480D88  4B FF CC F1 */	bl __register_global_object
/* 80480D8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80480D90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80480D94  7C 08 03 A6 */	mtlr r0
/* 80480D98  38 21 00 10 */	addi r1, r1, 0x10
/* 80480D9C  4E 80 00 20 */	blr 
