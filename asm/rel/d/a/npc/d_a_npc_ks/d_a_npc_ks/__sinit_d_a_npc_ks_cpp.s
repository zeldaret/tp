lbl_80A5DAD8:
/* 80A5DAD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A5DADC  7C 08 02 A6 */	mflr r0
/* 80A5DAE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A5DAE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A5DAE8  3C 60 80 A6 */	lis r3, lit_1109@ha /* 0x80A5FE48@ha */
/* 80A5DAEC  3B E3 FE 48 */	addi r31, r3, lit_1109@l /* 0x80A5FE48@l */
/* 80A5DAF0  38 7F 00 4C */	addi r3, r31, 0x4c
/* 80A5DAF4  3C 80 80 A5 */	lis r4, __dt__4cXyzFv@ha /* 0x80A49168@ha */
/* 80A5DAF8  38 84 91 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A49168@l */
/* 80A5DAFC  38 BF 00 40 */	addi r5, r31, 0x40
/* 80A5DB00  4B FE B4 19 */	bl __register_global_object
/* 80A5DB04  38 7F 00 70 */	addi r3, r31, 0x70
/* 80A5DB08  4B FE B4 85 */	bl __ct__14daNpc_Ks_HIO_cFv
/* 80A5DB0C  3C 80 80 A6 */	lis r4, __dt__14daNpc_Ks_HIO_cFv@ha /* 0x80A5DA90@ha */
/* 80A5DB10  38 84 DA 90 */	addi r4, r4, __dt__14daNpc_Ks_HIO_cFv@l /* 0x80A5DA90@l */
/* 80A5DB14  38 BF 00 64 */	addi r5, r31, 0x64
/* 80A5DB18  4B FE B4 01 */	bl __register_global_object
/* 80A5DB1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A5DB20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A5DB24  7C 08 03 A6 */	mtlr r0
/* 80A5DB28  38 21 00 10 */	addi r1, r1, 0x10
/* 80A5DB2C  4E 80 00 20 */	blr 
