lbl_80D481A4:
/* 80D481A4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80D481A8  7C 08 02 A6 */	mflr r0
/* 80D481AC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80D481B0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80D481B4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80D481B8  39 61 00 60 */	addi r11, r1, 0x60
/* 80D481BC  4B 61 9F FD */	bl _savegpr_20
/* 80D481C0  7C 7A 1B 78 */	mr r26, r3
/* 80D481C4  3C 60 80 D5 */	lis r3, lit_4737@ha /* 0x80D4C158@ha */
/* 80D481C8  38 83 C1 58 */	addi r4, r3, lit_4737@l /* 0x80D4C158@l */
/* 80D481CC  80 64 00 00 */	lwz r3, 0(r4)
/* 80D481D0  80 04 00 04 */	lwz r0, 4(r4)
/* 80D481D4  90 61 00 08 */	stw r3, 8(r1)
/* 80D481D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D481DC  88 1A 0E 25 */	lbz r0, 0xe25(r26)
/* 80D481E0  28 00 00 00 */	cmplwi r0, 0
/* 80D481E4  40 82 01 10 */	bne lbl_80D482F4
/* 80D481E8  3B C0 00 79 */	li r30, 0x79
/* 80D481EC  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80D481F0  3B A3 FD FF */	addi r29, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80D481F4  3B 80 00 1F */	li r28, 0x1f
/* 80D481F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D481FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D48200  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80D48204  28 00 00 00 */	cmplwi r0, 0
/* 80D48208  41 82 00 14 */	beq lbl_80D4821C
/* 80D4820C  3B A0 00 00 */	li r29, 0
/* 80D48210  3B 80 00 00 */	li r28, 0
/* 80D48214  3B C0 00 00 */	li r30, 0
/* 80D48218  48 00 00 18 */	b lbl_80D48230
lbl_80D4821C:
/* 80D4821C  A8 1A 0D 1C */	lha r0, 0xd1c(r26)
/* 80D48220  2C 00 00 00 */	cmpwi r0, 0
/* 80D48224  41 82 00 0C */	beq lbl_80D48230
/* 80D48228  3B A0 00 00 */	li r29, 0
/* 80D4822C  3B 80 00 00 */	li r28, 0
lbl_80D48230:
/* 80D48230  3B 60 00 00 */	li r27, 0
/* 80D48234  3B 20 00 00 */	li r25, 0
/* 80D48238  3B 00 00 00 */	li r24, 0
/* 80D4823C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D48240  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D48244  3B E3 23 3C */	addi r31, r3, 0x233c
/* 80D48248  3C 60 80 D5 */	lis r3, lit_4199@ha /* 0x80D4C108@ha */
/* 80D4824C  C3 E3 C1 08 */	lfs f31, lit_4199@l(r3)  /* 0x80D4C108@l */
/* 80D48250  3A C1 00 08 */	addi r22, r1, 8
/* 80D48254  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D48258  3A E3 D4 70 */	addi r23, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80D4825C:
/* 80D4825C  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 80D48260  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 80D48264  7C 16 C4 2E */	lfsx f0, r22, r24
/* 80D48268  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D4826C  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 80D48270  80 63 00 04 */	lwz r3, 4(r3)
/* 80D48274  38 63 00 24 */	addi r3, r3, 0x24
/* 80D48278  7E E4 BB 78 */	mr r4, r23
/* 80D4827C  4B 5F E2 35 */	bl PSMTXCopy
/* 80D48280  7E E3 BB 78 */	mr r3, r23
/* 80D48284  38 81 00 10 */	addi r4, r1, 0x10
/* 80D48288  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80D4828C  4B 5F EA E1 */	bl PSMTXMultVec
/* 80D48290  7E BA CA 14 */	add r21, r26, r25
/* 80D48294  93 D5 0E B4 */	stw r30, 0xeb4(r21)
/* 80D48298  93 B5 0E B0 */	stw r29, 0xeb0(r21)
/* 80D4829C  93 95 0E A0 */	stw r28, 0xea0(r21)
/* 80D482A0  80 15 0F 24 */	lwz r0, 0xf24(r21)
/* 80D482A4  60 00 00 04 */	ori r0, r0, 4
/* 80D482A8  90 15 0F 24 */	stw r0, 0xf24(r21)
/* 80D482AC  3A 95 0F AC */	addi r20, r21, 0xfac
/* 80D482B0  7E 83 A3 78 */	mr r3, r20
/* 80D482B4  C0 3A 0D EC */	lfs f1, 0xdec(r26)
/* 80D482B8  4B 52 6F 41 */	bl SetH__8cM3dGCylFf
/* 80D482BC  7E 83 A3 78 */	mr r3, r20
/* 80D482C0  C0 3A 0D F0 */	lfs f1, 0xdf0(r26)
/* 80D482C4  4B 52 6F 3D */	bl SetR__8cM3dGCylFf
/* 80D482C8  7E 83 A3 78 */	mr r3, r20
/* 80D482CC  38 81 00 1C */	addi r4, r1, 0x1c
/* 80D482D0  4B 52 6F 0D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80D482D4  7F E3 FB 78 */	mr r3, r31
/* 80D482D8  38 95 0E 88 */	addi r4, r21, 0xe88
/* 80D482DC  4B 51 C8 CD */	bl Set__4cCcSFP8cCcD_Obj
/* 80D482E0  3B 7B 00 01 */	addi r27, r27, 1
/* 80D482E4  2C 1B 00 02 */	cmpwi r27, 2
/* 80D482E8  3B 39 01 3C */	addi r25, r25, 0x13c
/* 80D482EC  3B 18 00 04 */	addi r24, r24, 4
/* 80D482F0  41 80 FF 6C */	blt lbl_80D4825C
lbl_80D482F4:
/* 80D482F4  3A A0 00 00 */	li r21, 0
/* 80D482F8  3B 60 00 00 */	li r27, 0
lbl_80D482FC:
/* 80D482FC  3A 9B 0E 88 */	addi r20, r27, 0xe88
/* 80D48300  7E 9A A2 14 */	add r20, r26, r20
/* 80D48304  7E 83 A3 78 */	mr r3, r20
/* 80D48308  81 94 00 3C */	lwz r12, 0x3c(r20)
/* 80D4830C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80D48310  7D 89 03 A6 */	mtctr r12
/* 80D48314  4E 80 04 21 */	bctrl 
/* 80D48318  7E 83 A3 78 */	mr r3, r20
/* 80D4831C  81 94 00 3C */	lwz r12, 0x3c(r20)
/* 80D48320  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80D48324  7D 89 03 A6 */	mtctr r12
/* 80D48328  4E 80 04 21 */	bctrl 
/* 80D4832C  3A B5 00 01 */	addi r21, r21, 1
/* 80D48330  2C 15 00 02 */	cmpwi r21, 2
/* 80D48334  3B 7B 01 3C */	addi r27, r27, 0x13c
/* 80D48338  41 80 FF C4 */	blt lbl_80D482FC
/* 80D4833C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80D48340  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80D48344  39 61 00 60 */	addi r11, r1, 0x60
/* 80D48348  4B 61 9E BD */	bl _restgpr_20
/* 80D4834C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80D48350  7C 08 03 A6 */	mtlr r0
/* 80D48354  38 21 00 70 */	addi r1, r1, 0x70
/* 80D48358  4E 80 00 20 */	blr 
