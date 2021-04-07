lbl_80347B98:
/* 80347B98  7C 08 02 A6 */	mflr r0
/* 80347B9C  3C E0 80 45 */	lis r7, CommandList@ha /* 0x8044C830@ha */
/* 80347BA0  90 01 00 04 */	stw r0, 4(r1)
/* 80347BA4  54 A8 00 21 */	rlwinm. r8, r5, 0, 0, 0x10
/* 80347BA8  39 27 C8 30 */	addi r9, r7, CommandList@l /* 0x8044C830@l */
/* 80347BAC  94 21 FF F8 */	stwu r1, -8(r1)
/* 80347BB0  40 82 00 0C */	bne lbl_80347BBC
/* 80347BB4  39 40 00 00 */	li r10, 0
/* 80347BB8  48 00 00 0C */	b lbl_80347BC4
lbl_80347BBC:
/* 80347BBC  80 0D 91 B8 */	lwz r0, WorkAroundSeekLocation(r13)
/* 80347BC0  7D 48 02 14 */	add r10, r8, r0
lbl_80347BC4:
/* 80347BC4  38 00 00 02 */	li r0, 2
/* 80347BC8  90 09 00 00 */	stw r0, 0(r9)
/* 80347BCC  39 00 00 01 */	li r8, 1
/* 80347BD0  38 E0 FF FF */	li r7, -1
/* 80347BD4  91 49 00 0C */	stw r10, 0xc(r9)
/* 80347BD8  38 00 00 00 */	li r0, 0
/* 80347BDC  90 C9 00 10 */	stw r6, 0x10(r9)
/* 80347BE0  91 09 00 14 */	stw r8, 0x14(r9)
/* 80347BE4  90 69 00 18 */	stw r3, 0x18(r9)
/* 80347BE8  7D 43 53 78 */	mr r3, r10
/* 80347BEC  90 89 00 1C */	stw r4, 0x1c(r9)
/* 80347BF0  7C C4 33 78 */	mr r4, r6
/* 80347BF4  90 A9 00 20 */	stw r5, 0x20(r9)
/* 80347BF8  90 C9 00 24 */	stw r6, 0x24(r9)
/* 80347BFC  90 E9 00 28 */	stw r7, 0x28(r9)
/* 80347C00  90 0D 91 D4 */	stw r0, NextCommandNumber(r13)
/* 80347C04  48 00 02 AD */	bl DVDLowSeek
/* 80347C08  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80347C0C  38 21 00 08 */	addi r1, r1, 8
/* 80347C10  7C 08 03 A6 */	mtlr r0
/* 80347C14  4E 80 00 20 */	blr 
