lbl_80340B1C:
/* 80340B1C  7C 08 02 A6 */	mflr r0
/* 80340B20  3C 60 80 45 */	lis r3, RunQueue@ha /* 0x8044BB78@ha */
/* 80340B24  90 01 00 04 */	stw r0, 4(r1)
/* 80340B28  38 00 00 02 */	li r0, 2
/* 80340B2C  38 80 00 10 */	li r4, 0x10
/* 80340B30  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80340B34  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80340B38  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80340B3C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80340B40  3B A0 00 00 */	li r29, 0
/* 80340B44  93 81 00 08 */	stw r28, 8(r1)
/* 80340B48  3B 83 BB 78 */	addi r28, r3, RunQueue@l /* 0x8044BB78@l */
/* 80340B4C  3B FC 04 18 */	addi r31, r28, 0x418
/* 80340B50  B0 1C 06 E0 */	sth r0, 0x6e0(r28)
/* 80340B54  38 00 00 01 */	li r0, 1
/* 80340B58  38 7F 02 E8 */	addi r3, r31, 0x2e8
/* 80340B5C  B0 1C 06 E2 */	sth r0, 0x6e2(r28)
/* 80340B60  38 00 FF FF */	li r0, -1
/* 80340B64  90 9C 06 EC */	stw r4, 0x6ec(r28)
/* 80340B68  90 9C 06 E8 */	stw r4, 0x6e8(r28)
/* 80340B6C  93 BC 06 E4 */	stw r29, 0x6e4(r28)
/* 80340B70  90 1C 06 F0 */	stw r0, 0x6f0(r28)
/* 80340B74  93 BC 07 08 */	stw r29, 0x708(r28)
/* 80340B78  48 00 00 FD */	bl OSInitThreadQueue
/* 80340B7C  93 BC 07 10 */	stw r29, 0x710(r28)
/* 80340B80  3F C0 80 00 */	lis r30, 0x8000 /* 0x800000D8@ha */
/* 80340B84  38 7F 00 00 */	addi r3, r31, 0
/* 80340B88  93 BC 07 0C */	stw r29, 0x70c(r28)
/* 80340B8C  93 FE 00 D8 */	stw r31, 0x00D8(r30)  /* 0x800000D8@l */
/* 80340B90  4B FF B4 71 */	bl OSClearContext
/* 80340B94  7F E3 FB 78 */	mr r3, r31
/* 80340B98  4B FF B2 A1 */	bl OSSetCurrentContext
/* 80340B9C  3C 60 80 45 */	lis r3, _stack_end+0x1000@ha /* 0x80457BC8@ha */
/* 80340BA0  38 03 7B C8 */	addi r0, r3, _stack_end+0x1000@l /* 0x80457BC8@l */
/* 80340BA4  3C 60 80 45 */	lis r3, _stack_end@ha /* 0x80456BC8@ha */
/* 80340BA8  90 1C 07 1C */	stw r0, 0x71c(r28)
/* 80340BAC  38 03 6B C8 */	addi r0, r3, _stack_end@l /* 0x80456BC8@l */
/* 80340BB0  90 1C 07 20 */	stw r0, 0x720(r28)
/* 80340BB4  3C 60 DE AE */	lis r3, 0xDEAE /* 0xDEADBABE@ha */
/* 80340BB8  38 03 BA BE */	addi r0, r3, 0xBABE /* 0xDEADBABE@l */
/* 80340BBC  80 7C 07 20 */	lwz r3, 0x720(r28)
/* 80340BC0  7F E4 FB 78 */	mr r4, r31
/* 80340BC4  90 03 00 00 */	stw r0, 0(r3)
/* 80340BC8  81 8D 84 38 */	lwz r12, SwitchThreadCallback(r13)
/* 80340BCC  80 7E 00 E4 */	lwz r3, 0xe4(r30)
/* 80340BD0  7D 88 03 A6 */	mtlr r12
/* 80340BD4  4E 80 00 21 */	blrl 
/* 80340BD8  93 FE 00 E4 */	stw r31, 0xe4(r30)
/* 80340BDC  38 60 00 00 */	li r3, 0
/* 80340BE0  48 00 1A 71 */	bl OSClearStack
/* 80340BE4  93 AD 91 40 */	stw r29, RunQueueBits(r13)
/* 80340BE8  3B C0 00 00 */	li r30, 0
/* 80340BEC  57 C0 18 38 */	slwi r0, r30, 3
/* 80340BF0  93 AD 91 44 */	stw r29, RunQueueHint(r13)
/* 80340BF4  7F BC 02 14 */	add r29, r28, r0
lbl_80340BF8:
/* 80340BF8  7F A3 EB 78 */	mr r3, r29
/* 80340BFC  48 00 00 79 */	bl OSInitThreadQueue
/* 80340C00  3B DE 00 01 */	addi r30, r30, 1
/* 80340C04  2C 1E 00 1F */	cmpwi r30, 0x1f
/* 80340C08  3B BD 00 08 */	addi r29, r29, 8
/* 80340C0C  40 81 FF EC */	ble lbl_80340BF8
/* 80340C10  3F C0 80 00 */	lis r30, 0x8000 /* 0x800000DC@ha */
/* 80340C14  38 7E 00 DC */	addi r3, r30, 0x00DC /* 0x800000DC@l */
/* 80340C18  48 00 00 5D */	bl OSInitThreadQueue
/* 80340C1C  38 9E 00 DC */	addi r4, r30, 0xdc
/* 80340C20  84 64 00 04 */	lwzu r3, 4(r4)
/* 80340C24  28 03 00 00 */	cmplwi r3, 0
/* 80340C28  40 82 00 0C */	bne lbl_80340C34
/* 80340C2C  93 FE 00 DC */	stw r31, 0xdc(r30)
/* 80340C30  48 00 00 08 */	b lbl_80340C38
lbl_80340C34:
/* 80340C34  93 E3 02 FC */	stw r31, 0x2fc(r3)
lbl_80340C38:
/* 80340C38  90 7F 03 00 */	stw r3, 0x300(r31)
/* 80340C3C  3B C0 00 00 */	li r30, 0
/* 80340C40  38 7C 07 30 */	addi r3, r28, 0x730
/* 80340C44  93 DF 02 FC */	stw r30, 0x2fc(r31)
/* 80340C48  93 E4 00 00 */	stw r31, 0(r4)
/* 80340C4C  4B FF B3 B5 */	bl OSClearContext
/* 80340C50  93 CD 91 48 */	stw r30, Reschedule(r13)
/* 80340C54  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80340C58  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80340C5C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80340C60  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80340C64  83 81 00 08 */	lwz r28, 8(r1)
/* 80340C68  38 21 00 18 */	addi r1, r1, 0x18
/* 80340C6C  7C 08 03 A6 */	mtlr r0
/* 80340C70  4E 80 00 20 */	blr 
