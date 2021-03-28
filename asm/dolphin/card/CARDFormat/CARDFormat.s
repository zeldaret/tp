lbl_80357C20:
/* 80357C20  7C 08 02 A6 */	mflr r0
/* 80357C24  90 01 00 04 */	stw r0, 4(r1)
/* 80357C28  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80357C2C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80357C30  7C 7F 1B 78 */	mr r31, r3
/* 80357C34  4B FF BF 41 */	bl __CARDGetFontEncode
/* 80357C38  3C A0 80 35 */	lis r5, __CARDSyncCallback@ha
/* 80357C3C  38 83 00 00 */	addi r4, r3, 0
/* 80357C40  38 A5 2A 34 */	addi r5, r5, __CARDSyncCallback@l
/* 80357C44  38 7F 00 00 */	addi r3, r31, 0
/* 80357C48  4B FF F9 81 */	bl __CARDFormatRegionAsync
/* 80357C4C  2C 03 00 00 */	cmpwi r3, 0
/* 80357C50  40 80 00 08 */	bge lbl_80357C58
/* 80357C54  48 00 00 0C */	b lbl_80357C60
lbl_80357C58:
/* 80357C58  7F E3 FB 78 */	mr r3, r31
/* 80357C5C  4B FF C1 C5 */	bl __CARDSync
lbl_80357C60:
/* 80357C60  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80357C64  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80357C68  38 21 00 18 */	addi r1, r1, 0x18
/* 80357C6C  7C 08 03 A6 */	mtlr r0
/* 80357C70  4E 80 00 20 */	blr 
