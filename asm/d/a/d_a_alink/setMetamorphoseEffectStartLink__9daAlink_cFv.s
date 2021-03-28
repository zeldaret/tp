lbl_80124738:
/* 80124738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012473C  7C 08 02 A6 */	mflr r0
/* 80124740  90 01 00 14 */	stw r0, 0x14(r1)
/* 80124744  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80124748  7C 7F 1B 78 */	mr r31, r3
/* 8012474C  38 9F 31 F8 */	addi r4, r31, 0x31f8
/* 80124750  38 A0 02 4F */	li r5, 0x24f
/* 80124754  38 DF 37 C8 */	addi r6, r31, 0x37c8
/* 80124758  38 E0 00 00 */	li r7, 0
/* 8012475C  4B FF BE 25 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80124760  7F E3 FB 78 */	mr r3, r31
/* 80124764  38 9F 31 FC */	addi r4, r31, 0x31fc
/* 80124768  38 A0 02 50 */	li r5, 0x250
/* 8012476C  38 DF 37 C8 */	addi r6, r31, 0x37c8
/* 80124770  38 E0 00 00 */	li r7, 0
/* 80124774  4B FF BE 0D */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80124778  7F E3 FB 78 */	mr r3, r31
/* 8012477C  38 9F 32 00 */	addi r4, r31, 0x3200
/* 80124780  38 A0 06 E8 */	li r5, 0x6e8
/* 80124784  3C C0 80 43 */	lis r6, Zero__4cXyz@ha
/* 80124788  38 C6 0C F4 */	addi r6, r6, Zero__4cXyz@l
/* 8012478C  38 E0 00 00 */	li r7, 0
/* 80124790  4B FF BD F1 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80124794  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80124798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012479C  7C 08 03 A6 */	mtlr r0
/* 801247A0  38 21 00 10 */	addi r1, r1, 0x10
/* 801247A4  4E 80 00 20 */	blr 
