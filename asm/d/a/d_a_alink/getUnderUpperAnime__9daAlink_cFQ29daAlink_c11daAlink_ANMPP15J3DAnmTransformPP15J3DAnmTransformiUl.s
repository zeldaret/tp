lbl_800AC610:
/* 800AC610  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800AC614  7C 08 02 A6 */	mflr r0
/* 800AC618  90 01 00 34 */	stw r0, 0x34(r1)
/* 800AC61C  39 61 00 30 */	addi r11, r1, 0x30
/* 800AC620  48 2B 5B A9 */	bl _savegpr_24
/* 800AC624  7C 7C 1B 78 */	mr r28, r3
/* 800AC628  7C BF 2B 78 */	mr r31, r5
/* 800AC62C  7C DD 33 78 */	mr r29, r6
/* 800AC630  7C FE 3B 78 */	mr r30, r7
/* 800AC634  7D 18 43 78 */	mr r24, r8
/* 800AC638  4B FF FE 19 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800AC63C  7C 7B 1B 78 */	mr r27, r3
/* 800AC640  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800AC644  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800AC648  90 1C 05 70 */	stw r0, 0x570(r28)
/* 800AC64C  7F 83 E3 78 */	mr r3, r28
/* 800AC650  1F 3E 00 14 */	mulli r25, r30, 0x14
/* 800AC654  7F 5C CA 14 */	add r26, r28, r25
/* 800AC658  38 9A 1F 58 */	addi r4, r26, 0x1f58
/* 800AC65C  A0 BB 00 00 */	lhz r5, 0(r27)
/* 800AC660  7F 06 C3 78 */	mr r6, r24
/* 800AC664  4B FF 76 A9 */	bl getAnimeResource__9daAlink_cFP14daPy_anmHeap_cUsUl
/* 800AC668  90 7F 00 00 */	stw r3, 0(r31)
/* 800AC66C  80 1F 00 00 */	lwz r0, 0(r31)
/* 800AC670  28 00 00 00 */	cmplwi r0, 0
/* 800AC674  41 82 00 0C */	beq lbl_800AC680
/* 800AC678  3B E0 00 01 */	li r31, 1
/* 800AC67C  48 00 00 18 */	b lbl_800AC694
lbl_800AC680:
/* 800AC680  57 C0 18 38 */	slwi r0, r30, 3
/* 800AC684  7C 7C 02 14 */	add r3, r28, r0
/* 800AC688  80 03 1F 2C */	lwz r0, 0x1f2c(r3)
/* 800AC68C  90 1F 00 00 */	stw r0, 0(r31)
/* 800AC690  3B E0 00 00 */	li r31, 0
lbl_800AC694:
/* 800AC694  A0 1B 00 00 */	lhz r0, 0(r27)
/* 800AC698  A0 BB 00 02 */	lhz r5, 2(r27)
/* 800AC69C  7C 00 28 40 */	cmplw r0, r5
/* 800AC6A0  41 82 00 54 */	beq lbl_800AC6F4
/* 800AC6A4  3C 18 FF FF */	addis r0, r24, 0xffff
/* 800AC6A8  28 00 08 00 */	cmplwi r0, 0x800
/* 800AC6AC  40 82 00 0C */	bne lbl_800AC6B8
/* 800AC6B0  20 1E 00 03 */	subfic r0, r30, 3
/* 800AC6B4  1F 00 2C 00 */	mulli r24, r0, 0x2c00
lbl_800AC6B8:
/* 800AC6B8  7F 83 E3 78 */	mr r3, r28
/* 800AC6BC  38 9A 1F 94 */	addi r4, r26, 0x1f94
/* 800AC6C0  7F 06 C3 78 */	mr r6, r24
/* 800AC6C4  4B FF 76 49 */	bl getAnimeResource__9daAlink_cFP14daPy_anmHeap_cUsUl
/* 800AC6C8  90 7D 00 00 */	stw r3, 0(r29)
/* 800AC6CC  80 1D 00 00 */	lwz r0, 0(r29)
/* 800AC6D0  28 00 00 00 */	cmplwi r0, 0
/* 800AC6D4  41 82 00 0C */	beq lbl_800AC6E0
/* 800AC6D8  63 FF 00 01 */	ori r31, r31, 1
/* 800AC6DC  48 00 00 40 */	b lbl_800AC71C
lbl_800AC6E0:
/* 800AC6E0  57 C0 18 38 */	slwi r0, r30, 3
/* 800AC6E4  7C 7C 02 14 */	add r3, r28, r0
/* 800AC6E8  80 03 1F 44 */	lwz r0, 0x1f44(r3)
/* 800AC6EC  90 1D 00 00 */	stw r0, 0(r29)
/* 800AC6F0  48 00 00 2C */	b lbl_800AC71C
lbl_800AC6F4:
/* 800AC6F4  7C 9C CA 14 */	add r4, r28, r25
/* 800AC6F8  A0 04 1F 94 */	lhz r0, 0x1f94(r4)
/* 800AC6FC  28 00 FF FF */	cmplwi r0, 0xffff
/* 800AC700  41 82 00 08 */	beq lbl_800AC708
/* 800AC704  63 FF 00 01 */	ori r31, r31, 1
lbl_800AC708:
/* 800AC708  38 00 00 00 */	li r0, 0
/* 800AC70C  90 1D 00 00 */	stw r0, 0(r29)
/* 800AC710  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 800AC714  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 800AC718  B0 04 1F 94 */	sth r0, 0x1f94(r4)
lbl_800AC71C:
/* 800AC71C  7F E3 FB 78 */	mr r3, r31
/* 800AC720  39 61 00 30 */	addi r11, r1, 0x30
/* 800AC724  48 2B 5A F1 */	bl _restgpr_24
/* 800AC728  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800AC72C  7C 08 03 A6 */	mtlr r0
/* 800AC730  38 21 00 30 */	addi r1, r1, 0x30
/* 800AC734  4E 80 00 20 */	blr 
