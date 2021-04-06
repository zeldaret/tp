lbl_804A8720:
/* 804A8720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A8724  7C 08 02 A6 */	mflr r0
/* 804A8728  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A872C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A8730  3C 60 80 4B */	lis r3, lit_1109@ha /* 0x804A8C18@ha */
/* 804A8734  3B E3 8C 18 */	addi r31, r3, lit_1109@l /* 0x804A8C18@l */
/* 804A8738  38 7F 00 4C */	addi r3, r31, 0x4c
/* 804A873C  3C 80 80 4B */	lis r4, __ct__4cXyzFv@ha /* 0x804A871C@ha */
/* 804A8740  38 84 87 1C */	addi r4, r4, __ct__4cXyzFv@l /* 0x804A871C@l */
/* 804A8744  3C A0 80 4A */	lis r5, __dt__4cXyzFv@ha /* 0x804A449C@ha */
/* 804A8748  38 A5 44 9C */	addi r5, r5, __dt__4cXyzFv@l /* 0x804A449C@l */
/* 804A874C  38 C0 00 0C */	li r6, 0xc
/* 804A8750  38 E0 00 10 */	li r7, 0x10
/* 804A8754  4B EB 96 0D */	bl __construct_array
/* 804A8758  38 60 00 00 */	li r3, 0
/* 804A875C  3C 80 80 4B */	lis r4, func_804A8814@ha /* 0x804A8814@ha */
/* 804A8760  38 84 88 14 */	addi r4, r4, func_804A8814@l /* 0x804A8814@l */
/* 804A8764  38 BF 00 40 */	addi r5, r31, 0x40
/* 804A8768  4B FF BB 31 */	bl __register_global_object
/* 804A876C  38 7F 01 18 */	addi r3, r31, 0x118
/* 804A8770  3C 80 80 4B */	lis r4, __ct__4cXyzFv@ha /* 0x804A871C@ha */
/* 804A8774  38 84 87 1C */	addi r4, r4, __ct__4cXyzFv@l /* 0x804A871C@l */
/* 804A8778  3C A0 80 4A */	lis r5, __dt__4cXyzFv@ha /* 0x804A449C@ha */
/* 804A877C  38 A5 44 9C */	addi r5, r5, __dt__4cXyzFv@l /* 0x804A449C@l */
/* 804A8780  38 C0 00 0C */	li r6, 0xc
/* 804A8784  38 E0 00 10 */	li r7, 0x10
/* 804A8788  4B EB 95 D9 */	bl __construct_array
/* 804A878C  38 60 00 00 */	li r3, 0
/* 804A8790  3C 80 80 4B */	lis r4, func_804A87DC@ha /* 0x804A87DC@ha */
/* 804A8794  38 84 87 DC */	addi r4, r4, func_804A87DC@l /* 0x804A87DC@l */
/* 804A8798  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A879C  4B FF BA FD */	bl __register_global_object
/* 804A87A0  38 7F 01 E4 */	addi r3, r31, 0x1e4
/* 804A87A4  3C 80 80 4A */	lis r4, __dt__4cXyzFv@ha /* 0x804A449C@ha */
/* 804A87A8  38 84 44 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x804A449C@l */
/* 804A87AC  38 BF 01 D8 */	addi r5, r31, 0x1d8
/* 804A87B0  4B FF BA E9 */	bl __register_global_object
/* 804A87B4  38 7F 01 FC */	addi r3, r31, 0x1fc
/* 804A87B8  3C 80 80 4A */	lis r4, __dt__4cXyzFv@ha /* 0x804A449C@ha */
/* 804A87BC  38 84 44 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x804A449C@l */
/* 804A87C0  38 BF 01 F0 */	addi r5, r31, 0x1f0
/* 804A87C4  4B FF BA D5 */	bl __register_global_object
/* 804A87C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A87CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A87D0  7C 08 03 A6 */	mtlr r0
/* 804A87D4  38 21 00 10 */	addi r1, r1, 0x10
/* 804A87D8  4E 80 00 20 */	blr 
