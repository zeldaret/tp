lbl_80BB6FD4:
/* 80BB6FD4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BB6FD8  7C 08 02 A6 */	mflr r0
/* 80BB6FDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BB6FE0  39 61 00 30 */	addi r11, r1, 0x30
/* 80BB6FE4  4B 7A B1 E4 */	b _savegpr_24
/* 80BB6FE8  7C 7E 1B 78 */	mr r30, r3
/* 80BB6FEC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BB6FF0  54 1A 07 3E */	clrlwi r26, r0, 0x1c
/* 80BB6FF4  3B 00 00 00 */	li r24, 0
/* 80BB6FF8  3B A0 00 00 */	li r29, 0
/* 80BB6FFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BB7000  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BB7004  3F E3 00 02 */	addis r31, r3, 2
/* 80BB7008  3B FF C2 F8 */	addi r31, r31, -15624
/* 80BB700C  1C 9A 00 0C */	mulli r4, r26, 0xc
/* 80BB7010  3C 60 80 BB */	lis r3, BMD_IDX@ha
/* 80BB7014  38 03 7F 24 */	addi r0, r3, BMD_IDX@l
/* 80BB7018  7F 20 22 14 */	add r25, r0, r4
/* 80BB701C  3C 60 80 BC */	lis r3, l_arcName@ha
/* 80BB7020  3B 63 80 3C */	addi r27, r3, l_arcName@l
/* 80BB7024  3F 80 11 00 */	lis r28, 0x1100
lbl_80BB7028:
/* 80BB7028  80 7B 00 00 */	lwz r3, 0(r27)
/* 80BB702C  7C 99 E8 2E */	lwzx r4, r25, r29
/* 80BB7030  7F E5 FB 78 */	mr r5, r31
/* 80BB7034  38 C0 00 80 */	li r6, 0x80
/* 80BB7038  4B 48 52 B4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BB703C  3C 80 00 08 */	lis r4, 8
/* 80BB7040  38 BC 00 84 */	addi r5, r28, 0x84
/* 80BB7044  4B 45 DC 10 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BB7048  38 1D 08 64 */	addi r0, r29, 0x864
/* 80BB704C  7C 7E 01 2E */	stwx r3, r30, r0
/* 80BB7050  7C 1E 00 2E */	lwzx r0, r30, r0
/* 80BB7054  28 00 00 00 */	cmplwi r0, 0
/* 80BB7058  40 82 00 0C */	bne lbl_80BB7064
/* 80BB705C  38 60 00 00 */	li r3, 0
/* 80BB7060  48 00 00 CC */	b lbl_80BB712C
lbl_80BB7064:
/* 80BB7064  3B 18 00 01 */	addi r24, r24, 1
/* 80BB7068  2C 18 00 03 */	cmpwi r24, 3
/* 80BB706C  3B BD 00 04 */	addi r29, r29, 4
/* 80BB7070  41 80 FF B8 */	blt lbl_80BB7028
/* 80BB7074  2C 1A 00 01 */	cmpwi r26, 1
/* 80BB7078  40 82 00 B0 */	bne lbl_80BB7128
/* 80BB707C  38 60 00 C0 */	li r3, 0xc0
/* 80BB7080  4B 71 7B CC */	b __nw__FUl
/* 80BB7084  7C 60 1B 79 */	or. r0, r3, r3
/* 80BB7088  41 82 00 0C */	beq lbl_80BB7094
/* 80BB708C  4B 4C 48 E4 */	b __ct__4dBgWFv
/* 80BB7090  7C 60 1B 78 */	mr r0, r3
lbl_80BB7094:
/* 80BB7094  90 1E 05 AC */	stw r0, 0x5ac(r30)
/* 80BB7098  80 1E 05 AC */	lwz r0, 0x5ac(r30)
/* 80BB709C  28 00 00 00 */	cmplwi r0, 0
/* 80BB70A0  40 82 00 0C */	bne lbl_80BB70AC
/* 80BB70A4  38 60 00 00 */	li r3, 0
/* 80BB70A8  48 00 00 84 */	b lbl_80BB712C
lbl_80BB70AC:
/* 80BB70AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BB70B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BB70B4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80BB70B8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80BB70BC  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80BB70C0  4B 78 F8 28 */	b PSMTXTrans
/* 80BB70C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BB70C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BB70CC  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80BB70D0  4B 45 53 64 */	b mDoMtx_YrotM__FPA4_fs
/* 80BB70D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BB70D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BB70DC  38 9E 05 7C */	addi r4, r30, 0x57c
/* 80BB70E0  4B 78 F3 D0 */	b PSMTXCopy
/* 80BB70E4  3C 60 80 BC */	lis r3, l_arcName@ha
/* 80BB70E8  38 63 80 3C */	addi r3, r3, l_arcName@l
/* 80BB70EC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB70F0  38 80 00 0B */	li r4, 0xb
/* 80BB70F4  7F E5 FB 78 */	mr r5, r31
/* 80BB70F8  38 C0 00 80 */	li r6, 0x80
/* 80BB70FC  4B 48 51 F0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BB7100  7C 64 1B 78 */	mr r4, r3
/* 80BB7104  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80BB7108  38 A0 00 01 */	li r5, 1
/* 80BB710C  38 DE 05 7C */	addi r6, r30, 0x57c
/* 80BB7110  4B 4C 2E 28 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80BB7114  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80BB7118  28 00 00 01 */	cmplwi r0, 1
/* 80BB711C  40 82 00 0C */	bne lbl_80BB7128
/* 80BB7120  38 60 00 00 */	li r3, 0
/* 80BB7124  48 00 00 08 */	b lbl_80BB712C
lbl_80BB7128:
/* 80BB7128  38 60 00 01 */	li r3, 1
lbl_80BB712C:
/* 80BB712C  39 61 00 30 */	addi r11, r1, 0x30
/* 80BB7130  4B 7A B0 E4 */	b _restgpr_24
/* 80BB7134  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BB7138  7C 08 03 A6 */	mtlr r0
/* 80BB713C  38 21 00 30 */	addi r1, r1, 0x30
/* 80BB7140  4E 80 00 20 */	blr 
