lbl_80CB29C4:
/* 80CB29C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB29C8  7C 08 02 A6 */	mflr r0
/* 80CB29CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB29D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB29D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB29D8  41 82 00 1C */	beq lbl_80CB29F4
/* 80CB29DC  3C A0 80 CB */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80CB29E0  38 05 40 F4 */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80CB29E4  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB29E8  7C 80 07 35 */	extsh. r0, r4
/* 80CB29EC  40 81 00 08 */	ble lbl_80CB29F4
/* 80CB29F0  4B 61 C3 4C */	b __dl__FPv
lbl_80CB29F4:
/* 80CB29F4  7F E3 FB 78 */	mr r3, r31
/* 80CB29F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB29FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB2A00  7C 08 03 A6 */	mtlr r0
/* 80CB2A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB2A08  4E 80 00 20 */	blr 
