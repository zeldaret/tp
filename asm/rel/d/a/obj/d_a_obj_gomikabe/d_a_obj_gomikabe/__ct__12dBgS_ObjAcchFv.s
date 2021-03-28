lbl_80BFF804:
/* 80BFF804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFF808  7C 08 02 A6 */	mflr r0
/* 80BFF80C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFF810  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFF814  7C 7F 1B 78 */	mr r31, r3
/* 80BFF818  4B 47 68 88 */	b __ct__9dBgS_AcchFv
/* 80BFF81C  3C 60 80 C0 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80BFF820  38 63 FD 90 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80BFF824  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80BFF828  38 03 00 0C */	addi r0, r3, 0xc
/* 80BFF82C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BFF830  38 03 00 18 */	addi r0, r3, 0x18
/* 80BFF834  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80BFF838  38 7F 00 14 */	addi r3, r31, 0x14
/* 80BFF83C  4B 47 96 2C */	b SetObj__16dBgS_PolyPassChkFv
/* 80BFF840  7F E3 FB 78 */	mr r3, r31
/* 80BFF844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFF848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFF84C  7C 08 03 A6 */	mtlr r0
/* 80BFF850  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFF854  4E 80 00 20 */	blr 
