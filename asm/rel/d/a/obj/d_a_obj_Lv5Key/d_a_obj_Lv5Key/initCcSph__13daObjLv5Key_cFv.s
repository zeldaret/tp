lbl_80B9BBCC:
/* 80B9BBCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9BBD0  7C 08 02 A6 */	mflr r0
/* 80B9BBD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9BBD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9BBDC  7C 7F 1B 78 */	mr r31, r3
/* 80B9BBE0  38 7F 07 D0 */	addi r3, r31, 0x7d0
/* 80B9BBE4  38 80 00 3C */	li r4, 0x3c
/* 80B9BBE8  38 A0 00 FF */	li r5, 0xff
/* 80B9BBEC  7F E6 FB 78 */	mr r6, r31
/* 80B9BBF0  4B 4E 7C 71 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B9BBF4  38 7F 08 0C */	addi r3, r31, 0x80c
/* 80B9BBF8  3C 80 80 BA */	lis r4, ccShpSrc@ha /* 0x80B9C940@ha */
/* 80B9BBFC  38 84 C9 40 */	addi r4, r4, ccShpSrc@l /* 0x80B9C940@l */
/* 80B9BC00  4B 4E 8E 35 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80B9BC04  38 1F 07 D0 */	addi r0, r31, 0x7d0
/* 80B9BC08  90 1F 08 50 */	stw r0, 0x850(r31)
/* 80B9BC0C  38 7F 09 30 */	addi r3, r31, 0x930
/* 80B9BC10  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B9BC14  4B 6D 3A 35 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80B9BC18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9BC1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9BC20  7C 08 03 A6 */	mtlr r0
/* 80B9BC24  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9BC28  4E 80 00 20 */	blr 
