lbl_80877FB8:
/* 80877FB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80877FBC  7C 08 02 A6 */	mflr r0
/* 80877FC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80877FC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80877FC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80877FCC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80877FD0  93 81 00 10 */	stw r28, 0x10(r1)
/* 80877FD4  7C 7F 1B 78 */	mr r31, r3
/* 80877FD8  7C 9C 23 78 */	mr r28, r4
/* 80877FDC  7C BD 2B 78 */	mr r29, r5
/* 80877FE0  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 80877FE4  3B C3 9B D0 */	addi r30, r3, daMP_ActivePlayer@l
/* 80877FE8  80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 80877FEC  2C 00 00 00 */	cmpwi r0, 0
/* 80877FF0  41 82 02 8C */	beq lbl_8087827C
/* 80877FF4  88 1E 00 A4 */	lbz r0, 0xa4(r30)
/* 80877FF8  28 00 00 00 */	cmplwi r0, 0
/* 80877FFC  40 82 02 80 */	bne lbl_8087827C
/* 80878000  2C 1F 00 00 */	cmpwi r31, 0
/* 80878004  40 81 00 CC */	ble lbl_808780D0
/* 80878008  80 DE 00 60 */	lwz r6, 0x60(r30)
/* 8087800C  28 06 00 00 */	cmplwi r6, 0
/* 80878010  40 82 00 20 */	bne lbl_80878030
/* 80878014  3C 60 80 88 */	lis r3, stringBase0@ha
/* 80878018  38 63 91 1C */	addi r3, r3, stringBase0@l
/* 8087801C  38 63 01 C6 */	addi r3, r3, 0x1c6
/* 80878020  4C C6 31 82 */	crclr 6
/* 80878024  4B 78 EA 98 */	b OSReport
/* 80878028  38 60 00 00 */	li r3, 0
/* 8087802C  48 00 02 54 */	b lbl_80878280
lbl_80878030:
/* 80878030  80 1E 00 50 */	lwz r0, 0x50(r30)
/* 80878034  7C 00 F8 40 */	cmplw r0, r31
/* 80878038  40 81 00 7C */	ble lbl_808780B4
/* 8087803C  7F C3 F3 78 */	mr r3, r30
/* 80878040  3C 80 80 94 */	lis r4, daMP_WorkBuffer@ha
/* 80878044  38 84 48 A0 */	addi r4, r4, daMP_WorkBuffer@l
/* 80878048  38 A0 00 20 */	li r5, 0x20
/* 8087804C  38 1F FF FF */	addi r0, r31, -1
/* 80878050  54 00 10 3A */	slwi r0, r0, 2
/* 80878054  7C C6 02 14 */	add r6, r6, r0
/* 80878058  38 E0 00 02 */	li r7, 2
/* 8087805C  4B AD 0D E8 */	b DVDReadPrio
/* 80878060  2C 03 00 00 */	cmpwi r3, 0
/* 80878064  40 80 00 20 */	bge lbl_80878084
/* 80878068  3C 60 80 88 */	lis r3, stringBase0@ha
/* 8087806C  38 63 91 1C */	addi r3, r3, stringBase0@l
/* 80878070  38 63 01 F2 */	addi r3, r3, 0x1f2
/* 80878074  4C C6 31 82 */	crclr 6
/* 80878078  4B 78 EA 44 */	b OSReport
/* 8087807C  38 60 00 00 */	li r3, 0
/* 80878080  48 00 02 00 */	b lbl_80878280
lbl_80878084:
/* 80878084  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 80878088  38 83 9B D0 */	addi r4, r3, daMP_ActivePlayer@l
/* 8087808C  80 04 00 64 */	lwz r0, 0x64(r4)
/* 80878090  3C 60 80 94 */	lis r3, daMP_WorkBuffer@ha
/* 80878094  84 A3 48 A0 */	lwzu r5, daMP_WorkBuffer@l(r3)
/* 80878098  7C 00 2A 14 */	add r0, r0, r5
/* 8087809C  90 04 00 B8 */	stw r0, 0xb8(r4)
/* 808780A0  93 E4 00 C0 */	stw r31, 0xc0(r4)
/* 808780A4  80 03 00 04 */	lwz r0, 4(r3)
/* 808780A8  7C 05 00 50 */	subf r0, r5, r0
/* 808780AC  90 04 00 BC */	stw r0, 0xbc(r4)
/* 808780B0  48 00 00 34 */	b lbl_808780E4
lbl_808780B4:
/* 808780B4  3C 60 80 88 */	lis r3, stringBase0@ha
/* 808780B8  38 63 91 1C */	addi r3, r3, stringBase0@l
/* 808780BC  38 63 02 1F */	addi r3, r3, 0x21f
/* 808780C0  4C C6 31 82 */	crclr 6
/* 808780C4  4B 78 E9 F8 */	b OSReport
/* 808780C8  38 60 00 00 */	li r3, 0
/* 808780CC  48 00 01 B4 */	b lbl_80878280
lbl_808780D0:
/* 808780D0  80 1E 00 64 */	lwz r0, 0x64(r30)
/* 808780D4  90 1E 00 B8 */	stw r0, 0xb8(r30)
/* 808780D8  80 1E 00 54 */	lwz r0, 0x54(r30)
/* 808780DC  90 1E 00 BC */	stw r0, 0xbc(r30)
/* 808780E0  93 FE 00 C0 */	stw r31, 0xc0(r30)
lbl_808780E4:
/* 808780E4  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 808780E8  3B E3 9B D0 */	addi r31, r3, daMP_ActivePlayer@l
/* 808780EC  88 1F 00 A7 */	lbz r0, 0xa7(r31)
/* 808780F0  28 00 00 00 */	cmplwi r0, 0
/* 808780F4  41 82 00 38 */	beq lbl_8087812C
/* 808780F8  2C 1D 00 00 */	cmpwi r29, 0
/* 808780FC  41 80 00 10 */	blt lbl_8087810C
/* 80878100  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 80878104  7C 1D 00 40 */	cmplw r29, r0
/* 80878108  41 80 00 20 */	blt lbl_80878128
lbl_8087810C:
/* 8087810C  3C 60 80 88 */	lis r3, stringBase0@ha
/* 80878110  38 63 91 1C */	addi r3, r3, stringBase0@l
/* 80878114  38 63 02 52 */	addi r3, r3, 0x252
/* 80878118  4C C6 31 82 */	crclr 6
/* 8087811C  4B 78 E9 A0 */	b OSReport
/* 80878120  38 60 00 00 */	li r3, 0
/* 80878124  48 00 01 5C */	b lbl_80878280
lbl_80878128:
/* 80878128  93 BF 00 EC */	stw r29, 0xec(r31)
lbl_8087812C:
/* 8087812C  57 80 07 FE */	clrlwi r0, r28, 0x1f
/* 80878130  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 80878134  3B 83 9B D0 */	addi r28, r3, daMP_ActivePlayer@l
/* 80878138  98 1C 00 A6 */	stb r0, 0xa6(r28)
/* 8087813C  38 00 00 00 */	li r0, 0
/* 80878140  90 1C 00 D8 */	stw r0, 0xd8(r28)
/* 80878144  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80878148  2C 00 00 00 */	cmpwi r0, 0
/* 8087814C  41 82 00 84 */	beq lbl_808781D0
/* 80878150  7F 83 E3 78 */	mr r3, r28
/* 80878154  80 9C 00 B4 */	lwz r4, 0xb4(r28)
/* 80878158  80 BC 00 58 */	lwz r5, 0x58(r28)
/* 8087815C  80 DC 00 64 */	lwz r6, 0x64(r28)
/* 80878160  38 E0 00 02 */	li r7, 2
/* 80878164  4B AD 0C E0 */	b DVDReadPrio
/* 80878168  2C 03 00 00 */	cmpwi r3, 0
/* 8087816C  40 80 00 20 */	bge lbl_8087818C
/* 80878170  3C 60 80 88 */	lis r3, stringBase0@ha
/* 80878174  38 63 91 1C */	addi r3, r3, stringBase0@l
/* 80878178  38 63 02 7B */	addi r3, r3, 0x27b
/* 8087817C  4C C6 31 82 */	crclr 6
/* 80878180  4B 78 E9 3C */	b OSReport
/* 80878184  38 60 00 00 */	li r3, 0
/* 80878188  48 00 00 F8 */	b lbl_80878280
lbl_8087818C:
/* 8087818C  80 BC 00 64 */	lwz r5, 0x64(r28)
/* 80878190  80 9C 00 B4 */	lwz r4, 0xb4(r28)
/* 80878194  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 80878198  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l
/* 8087819C  80 03 00 B8 */	lwz r0, 0xb8(r3)
/* 808781A0  7C 04 02 14 */	add r0, r4, r0
/* 808781A4  7F A5 00 50 */	subf r29, r5, r0
/* 808781A8  38 60 00 14 */	li r3, 0x14
/* 808781AC  7F A4 EB 78 */	mr r4, r29
/* 808781B0  4B FF DE 25 */	bl daMP_CreateVideoDecodeThread__FlPUc
/* 808781B4  88 1F 00 A7 */	lbz r0, 0xa7(r31)
/* 808781B8  28 00 00 00 */	cmplwi r0, 0
/* 808781BC  41 82 00 40 */	beq lbl_808781FC
/* 808781C0  38 60 00 0C */	li r3, 0xc
/* 808781C4  7F A4 EB 78 */	mr r4, r29
/* 808781C8  4B FF E2 25 */	bl daMP_CreateAudioDecodeThread__FlPUc
/* 808781CC  48 00 00 30 */	b lbl_808781FC
lbl_808781D0:
/* 808781D0  38 60 00 14 */	li r3, 0x14
/* 808781D4  38 80 00 00 */	li r4, 0
/* 808781D8  4B FF DD FD */	bl daMP_CreateVideoDecodeThread__FlPUc
/* 808781DC  88 1F 00 A7 */	lbz r0, 0xa7(r31)
/* 808781E0  28 00 00 00 */	cmplwi r0, 0
/* 808781E4  41 82 00 10 */	beq lbl_808781F4
/* 808781E8  38 60 00 0C */	li r3, 0xc
/* 808781EC  38 80 00 00 */	li r4, 0
/* 808781F0  4B FF E1 FD */	bl daMP_CreateAudioDecodeThread__FlPUc
lbl_808781F4:
/* 808781F4  38 60 00 08 */	li r3, 8
/* 808781F8  4B FF D9 21 */	bl daMP_CreateReadThread__Fl
lbl_808781FC:
/* 808781FC  4B FF F8 0D */	bl daMP_InitAllMessageQueue__Fv
/* 80878200  4B FF DE ED */	bl daMP_VideoDecodeThreadStart__Fv
/* 80878204  88 1F 00 A7 */	lbz r0, 0xa7(r31)
/* 80878208  28 00 00 00 */	cmplwi r0, 0
/* 8087820C  41 82 00 08 */	beq lbl_80878214
/* 80878210  4B FF E2 D9 */	bl daMP_AudioDecodeThreadStart__Fv
lbl_80878214:
/* 80878214  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80878218  2C 00 00 00 */	cmpwi r0, 0
/* 8087821C  40 82 00 08 */	bne lbl_80878224
/* 80878220  4B FF D7 8D */	bl daMP_ReadThreadStart__Fv
lbl_80878224:
/* 80878224  4B FF FD 25 */	bl daMP_WaitUntilPrepare__Fv
/* 80878228  2C 03 00 00 */	cmpwi r3, 0
/* 8087822C  40 82 00 0C */	bne lbl_80878238
/* 80878230  38 60 00 00 */	li r3, 0
/* 80878234  48 00 00 4C */	b lbl_80878280
lbl_80878238:
/* 80878238  38 00 00 01 */	li r0, 1
/* 8087823C  98 1E 00 A4 */	stb r0, 0xa4(r30)
/* 80878240  38 00 00 00 */	li r0, 0
/* 80878244  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 80878248  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l
/* 8087824C  98 03 00 A5 */	stb r0, 0xa5(r3)
/* 80878250  90 03 00 F8 */	stw r0, 0xf8(r3)
/* 80878254  90 03 00 FC */	stw r0, 0xfc(r3)
/* 80878258  90 03 00 F0 */	stw r0, 0xf0(r3)
/* 8087825C  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80878260  3C 60 80 87 */	lis r3, daMP_PlayControl__FUl@ha
/* 80878264  38 63 7C 8C */	addi r3, r3, daMP_PlayControl__FUl@l
/* 80878268  4B AD 3F BC */	b VISetPostRetraceCallback
/* 8087826C  3C 80 80 94 */	lis r4, daMP_OldVIPostCallback@ha
/* 80878270  90 64 49 30 */	stw r3, daMP_OldVIPostCallback@l(r4)
/* 80878274  38 60 00 01 */	li r3, 1
/* 80878278  48 00 00 08 */	b lbl_80878280
lbl_8087827C:
/* 8087827C  38 60 00 00 */	li r3, 0
lbl_80878280:
/* 80878280  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80878284  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80878288  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8087828C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80878290  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80878294  7C 08 03 A6 */	mtlr r0
/* 80878298  38 21 00 20 */	addi r1, r1, 0x20
/* 8087829C  4E 80 00 20 */	blr 
