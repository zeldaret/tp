lbl_8062D7E8:
/* 8062D7E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062D7EC  7C 08 02 A6 */	mflr r0
/* 8062D7F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062D7F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062D7F8  7C 7F 1B 78 */	mr r31, r3
/* 8062D7FC  4B A4 88 A5 */	bl __ct__9dBgS_AcchFv
/* 8062D800  3C 60 80 63 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8062EF84@ha */
/* 8062D804  38 63 EF 84 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8062EF84@l */
/* 8062D808  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8062D80C  38 03 00 0C */	addi r0, r3, 0xc
/* 8062D810  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8062D814  38 03 00 18 */	addi r0, r3, 0x18
/* 8062D818  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8062D81C  38 7F 00 14 */	addi r3, r31, 0x14
/* 8062D820  4B A4 B6 49 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8062D824  7F E3 FB 78 */	mr r3, r31
/* 8062D828  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062D82C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062D830  7C 08 03 A6 */	mtlr r0
/* 8062D834  38 21 00 10 */	addi r1, r1, 0x10
/* 8062D838  4E 80 00 20 */	blr 
