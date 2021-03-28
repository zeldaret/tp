lbl_8033C580:
/* 8033C580  7C 08 02 A6 */	mflr r0
/* 8033C584  90 01 00 04 */	stw r0, 4(r1)
/* 8033C588  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8033C58C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8033C590  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8033C594  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8033C598  3B A3 00 00 */	addi r29, r3, 0
/* 8033C59C  93 81 00 20 */	stw r28, 0x20(r1)
/* 8033C5A0  3B 84 00 00 */	addi r28, r4, 0
/* 8033C5A4  48 00 11 51 */	bl OSDisableInterrupts
/* 8033C5A8  3C 80 80 45 */	lis r4, __OSErrorTable@ha
/* 8033C5AC  57 A5 13 BA */	rlwinm r5, r29, 2, 0xe, 0x1d
/* 8033C5B0  38 04 BA D0 */	addi r0, r4, __OSErrorTable@l
/* 8033C5B4  57 A6 04 3E */	clrlwi r6, r29, 0x10
/* 8033C5B8  7C 80 2A 14 */	add r4, r0, r5
/* 8033C5BC  83 C4 00 00 */	lwz r30, 0(r4)
/* 8033C5C0  28 06 00 10 */	cmplwi r6, 0x10
/* 8033C5C4  7C 7D 1B 78 */	mr r29, r3
/* 8033C5C8  93 84 00 00 */	stw r28, 0(r4)
/* 8033C5CC  40 82 01 A0 */	bne lbl_8033C76C
/* 8033C5D0  4B FF D6 F1 */	bl PPCMfmsr
/* 8033C5D4  3B E3 00 00 */	addi r31, r3, 0
/* 8033C5D8  63 E3 20 00 */	ori r3, r31, 0x2000
/* 8033C5DC  4B FF D6 ED */	bl PPCMtmsr
/* 8033C5E0  4B FF D7 65 */	bl PPCMffpscr
/* 8033C5E4  28 1C 00 00 */	cmplwi r28, 0
/* 8033C5E8  41 82 01 18 */	beq lbl_8033C700
/* 8033C5EC  3C A0 80 00 */	lis r5, 0x8000 /* 0x800000DC@ha */
/* 8033C5F0  3C 80 60 06 */	lis r4, 0x6006 /* 0x6005F8FF@ha */
/* 8033C5F4  80 C5 00 DC */	lwz r6, 0x00DC(r5)
/* 8033C5F8  38 84 F8 FF */	addi r4, r4, 0xF8FF /* 0x6005F8FF@l */
/* 8033C5FC  48 00 00 E8 */	b lbl_8033C6E4
lbl_8033C600:
/* 8033C600  80 06 01 9C */	lwz r0, 0x19c(r6)
/* 8033C604  60 00 09 00 */	ori r0, r0, 0x900
/* 8033C608  90 06 01 9C */	stw r0, 0x19c(r6)
/* 8033C60C  A0 A6 01 A2 */	lhz r5, 0x1a2(r6)
/* 8033C610  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 8033C614  40 82 00 AC */	bne lbl_8033C6C0
/* 8033C618  60 A5 00 01 */	ori r5, r5, 1
/* 8033C61C  38 00 00 04 */	li r0, 4
/* 8033C620  B0 A6 01 A2 */	sth r5, 0x1a2(r6)
/* 8033C624  7C 09 03 A6 */	mtctr r0
/* 8033C628  38 A6 00 00 */	addi r5, r6, 0
lbl_8033C62C:
/* 8033C62C  38 00 FF FF */	li r0, -1
/* 8033C630  90 05 00 94 */	stw r0, 0x94(r5)
/* 8033C634  90 05 00 90 */	stw r0, 0x90(r5)
/* 8033C638  90 05 01 CC */	stw r0, 0x1cc(r5)
/* 8033C63C  90 05 01 C8 */	stw r0, 0x1c8(r5)
/* 8033C640  90 05 00 9C */	stw r0, 0x9c(r5)
/* 8033C644  90 05 00 98 */	stw r0, 0x98(r5)
/* 8033C648  90 05 01 D4 */	stw r0, 0x1d4(r5)
/* 8033C64C  90 05 01 D0 */	stw r0, 0x1d0(r5)
/* 8033C650  90 05 00 A4 */	stw r0, 0xa4(r5)
/* 8033C654  90 05 00 A0 */	stw r0, 0xa0(r5)
/* 8033C658  90 05 01 DC */	stw r0, 0x1dc(r5)
/* 8033C65C  90 05 01 D8 */	stw r0, 0x1d8(r5)
/* 8033C660  90 05 00 AC */	stw r0, 0xac(r5)
/* 8033C664  90 05 00 A8 */	stw r0, 0xa8(r5)
/* 8033C668  90 05 01 E4 */	stw r0, 0x1e4(r5)
/* 8033C66C  90 05 01 E0 */	stw r0, 0x1e0(r5)
/* 8033C670  90 05 00 B4 */	stw r0, 0xb4(r5)
/* 8033C674  90 05 00 B0 */	stw r0, 0xb0(r5)
/* 8033C678  90 05 01 EC */	stw r0, 0x1ec(r5)
/* 8033C67C  90 05 01 E8 */	stw r0, 0x1e8(r5)
/* 8033C680  90 05 00 BC */	stw r0, 0xbc(r5)
/* 8033C684  90 05 00 B8 */	stw r0, 0xb8(r5)
/* 8033C688  90 05 01 F4 */	stw r0, 0x1f4(r5)
/* 8033C68C  90 05 01 F0 */	stw r0, 0x1f0(r5)
/* 8033C690  90 05 00 C4 */	stw r0, 0xc4(r5)
/* 8033C694  90 05 00 C0 */	stw r0, 0xc0(r5)
/* 8033C698  90 05 01 FC */	stw r0, 0x1fc(r5)
/* 8033C69C  90 05 01 F8 */	stw r0, 0x1f8(r5)
/* 8033C6A0  90 05 00 CC */	stw r0, 0xcc(r5)
/* 8033C6A4  90 05 00 C8 */	stw r0, 0xc8(r5)
/* 8033C6A8  90 05 02 04 */	stw r0, 0x204(r5)
/* 8033C6AC  90 05 02 00 */	stw r0, 0x200(r5)
/* 8033C6B0  38 A5 00 40 */	addi r5, r5, 0x40
/* 8033C6B4  42 00 FF 78 */	bdnz lbl_8033C62C
/* 8033C6B8  38 00 00 04 */	li r0, 4
/* 8033C6BC  90 06 01 94 */	stw r0, 0x194(r6)
lbl_8033C6C0:
/* 8033C6C0  80 0D 84 20 */	lwz r0, __OSFpscrEnableBits(r13)
/* 8033C6C4  80 A6 01 94 */	lwz r5, 0x194(r6)
/* 8033C6C8  54 00 06 38 */	rlwinm r0, r0, 0, 0x18, 0x1c
/* 8033C6CC  7C A0 03 78 */	or r0, r5, r0
/* 8033C6D0  90 06 01 94 */	stw r0, 0x194(r6)
/* 8033C6D4  80 06 01 94 */	lwz r0, 0x194(r6)
/* 8033C6D8  7C 00 20 38 */	and r0, r0, r4
/* 8033C6DC  90 06 01 94 */	stw r0, 0x194(r6)
/* 8033C6E0  80 C6 02 FC */	lwz r6, 0x2fc(r6)
lbl_8033C6E4:
/* 8033C6E4  28 06 00 00 */	cmplwi r6, 0
/* 8033C6E8  40 82 FF 18 */	bne lbl_8033C600
/* 8033C6EC  80 0D 84 20 */	lwz r0, __OSFpscrEnableBits(r13)
/* 8033C6F0  63 FF 09 00 */	ori r31, r31, 0x900
/* 8033C6F4  54 00 06 38 */	rlwinm r0, r0, 0, 0x18, 0x1c
/* 8033C6F8  7C 63 03 78 */	or r3, r3, r0
/* 8033C6FC  48 00 00 58 */	b lbl_8033C754
lbl_8033C700:
/* 8033C700  3C A0 80 00 */	lis r5, 0x8000 /* 0x800000DC@ha */
/* 8033C704  3C 80 60 06 */	lis r4, 0x6006 /* 0x6005F8FF@ha */
/* 8033C708  80 C5 00 DC */	lwz r6, 0x00DC(r5)
/* 8033C70C  38 84 F8 FF */	addi r4, r4, 0xF8FF /* 0x6005F8FF@l */
/* 8033C710  38 A0 F6 FF */	li r5, -2305
/* 8033C714  48 00 00 2C */	b lbl_8033C740
lbl_8033C718:
/* 8033C718  80 06 01 9C */	lwz r0, 0x19c(r6)
/* 8033C71C  7C 00 28 38 */	and r0, r0, r5
/* 8033C720  90 06 01 9C */	stw r0, 0x19c(r6)
/* 8033C724  80 06 01 94 */	lwz r0, 0x194(r6)
/* 8033C728  54 00 07 6E */	rlwinm r0, r0, 0, 0x1d, 0x17
/* 8033C72C  90 06 01 94 */	stw r0, 0x194(r6)
/* 8033C730  80 06 01 94 */	lwz r0, 0x194(r6)
/* 8033C734  7C 00 20 38 */	and r0, r0, r4
/* 8033C738  90 06 01 94 */	stw r0, 0x194(r6)
/* 8033C73C  80 C6 02 FC */	lwz r6, 0x2fc(r6)
lbl_8033C740:
/* 8033C740  28 06 00 00 */	cmplwi r6, 0
/* 8033C744  40 82 FF D4 */	bne lbl_8033C718
/* 8033C748  38 00 F6 FF */	li r0, -2305
/* 8033C74C  54 63 07 6E */	rlwinm r3, r3, 0, 0x1d, 0x17
/* 8033C750  7F FF 00 38 */	and r31, r31, r0
lbl_8033C754:
/* 8033C754  3C 80 60 06 */	lis r4, 0x6006 /* 0x6005F8FF@ha */
/* 8033C758  38 04 F8 FF */	addi r0, r4, 0xF8FF /* 0x6005F8FF@l */
/* 8033C75C  7C 63 00 38 */	and r3, r3, r0
/* 8033C760  4B FF D6 05 */	bl PPCMtfpscr
/* 8033C764  7F E3 FB 78 */	mr r3, r31
/* 8033C768  4B FF D5 61 */	bl PPCMtmsr
lbl_8033C76C:
/* 8033C76C  7F A3 EB 78 */	mr r3, r29
/* 8033C770  48 00 0F AD */	bl OSRestoreInterrupts
/* 8033C774  7F C3 F3 78 */	mr r3, r30
/* 8033C778  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8033C77C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8033C780  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8033C784  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8033C788  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8033C78C  38 21 00 30 */	addi r1, r1, 0x30
/* 8033C790  7C 08 03 A6 */	mtlr r0
/* 8033C794  4E 80 00 20 */	blr 
