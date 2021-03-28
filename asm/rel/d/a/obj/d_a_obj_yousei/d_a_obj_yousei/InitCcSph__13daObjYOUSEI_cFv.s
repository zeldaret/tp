lbl_804CE738:
/* 804CE738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CE73C  7C 08 02 A6 */	mflr r0
/* 804CE740  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CE744  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CE748  7C 7F 1B 78 */	mr r31, r3
/* 804CE74C  38 7F 08 D4 */	addi r3, r31, 0x8d4
/* 804CE750  38 80 00 01 */	li r4, 1
/* 804CE754  38 A0 00 00 */	li r5, 0
/* 804CE758  7F E6 FB 78 */	mr r6, r31
/* 804CE75C  4B BB 51 04 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 804CE760  38 7F 09 10 */	addi r3, r31, 0x910
/* 804CE764  3C 80 80 4D */	lis r4, ccSphSrc@ha
/* 804CE768  38 84 15 F0 */	addi r4, r4, ccSphSrc@l
/* 804CE76C  4B BB 62 C8 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 804CE770  38 1F 08 D4 */	addi r0, r31, 0x8d4
/* 804CE774  90 1F 09 54 */	stw r0, 0x954(r31)
/* 804CE778  38 7F 0A 34 */	addi r3, r31, 0xa34
/* 804CE77C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804CE780  4B DA 0E C8 */	b SetC__8cM3dGSphFRC4cXyz
/* 804CE784  80 1F 09 AC */	lwz r0, 0x9ac(r31)
/* 804CE788  60 00 00 04 */	ori r0, r0, 4
/* 804CE78C  90 1F 09 AC */	stw r0, 0x9ac(r31)
/* 804CE790  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CE794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CE798  7C 08 03 A6 */	mtlr r0
/* 804CE79C  38 21 00 10 */	addi r1, r1, 0x10
/* 804CE7A0  4E 80 00 20 */	blr 
