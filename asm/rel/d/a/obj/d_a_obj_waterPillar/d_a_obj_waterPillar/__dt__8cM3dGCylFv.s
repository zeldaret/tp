lbl_80D2E21C:
/* 80D2E21C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2E220  7C 08 02 A6 */	mflr r0
/* 80D2E224  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2E228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2E22C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D2E230  41 82 00 1C */	beq lbl_80D2E24C
/* 80D2E234  3C A0 80 D3 */	lis r5, __vt__8cM3dGCyl@ha
/* 80D2E238  38 05 EA B0 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80D2E23C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80D2E240  7C 80 07 35 */	extsh. r0, r4
/* 80D2E244  40 81 00 08 */	ble lbl_80D2E24C
/* 80D2E248  4B 5A 0A F4 */	b __dl__FPv
lbl_80D2E24C:
/* 80D2E24C  7F E3 FB 78 */	mr r3, r31
/* 80D2E250  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2E254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2E258  7C 08 03 A6 */	mtlr r0
/* 80D2E25C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2E260  4E 80 00 20 */	blr 
