lbl_80517CB0:
/* 80517CB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80517CB4  7C 08 02 A6 */	mflr r0
/* 80517CB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80517CBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80517CC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80517CC4  41 82 00 1C */	beq lbl_80517CE0
/* 80517CC8  3C A0 80 52 */	lis r5, __vt__8cM3dGSph@ha /* 0x805190BC@ha */
/* 80517CCC  38 05 90 BC */	addi r0, r5, __vt__8cM3dGSph@l /* 0x805190BC@l */
/* 80517CD0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80517CD4  7C 80 07 35 */	extsh. r0, r4
/* 80517CD8  40 81 00 08 */	ble lbl_80517CE0
/* 80517CDC  4B DB 70 61 */	bl __dl__FPv
lbl_80517CE0:
/* 80517CE0  7F E3 FB 78 */	mr r3, r31
/* 80517CE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80517CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80517CEC  7C 08 03 A6 */	mtlr r0
/* 80517CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80517CF4  4E 80 00 20 */	blr 
