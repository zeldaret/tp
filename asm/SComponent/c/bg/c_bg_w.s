.include "macros.inc"

.section .text, "ax" # 802681c0


.global cBgW_BgId_NS_Regist
cBgW_BgId_NS_Regist:
/* 802681C0 00265100  B0 83 00 00 */	sth r4, 0(r3)
/* 802681C4 00265104  4E 80 00 20 */	blr 

.global cBgW_BgId_NS_Release
cBgW_BgId_NS_Release:
/* 802681C8 00265108  38 00 01 00 */	li r0, 0x100
/* 802681CC 0026510C  B0 03 00 00 */	sth r0, 0(r3)
/* 802681D0 00265110  4E 80 00 20 */	blr 

.global cBgW_BgId_NS_ChkUsed
cBgW_BgId_NS_ChkUsed:
/* 802681D4 00265114  A0 63 00 00 */	lhz r3, 0(r3)
/* 802681D8 00265118  38 03 FF 00 */	addi r0, r3, -256
/* 802681DC 0026511C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 802681E0 00265120  4E 80 00 20 */	blr 

.global cBgW_CheckBGround
cBgW_CheckBGround:
/* 802681E4 00265124  C0 02 B6 E8 */	lfs f0, lbl_804550E8-_SDA2_BASE_(r2)
/* 802681E8 00265128  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802681EC 0026512C  4C 41 13 82 */	cror 2, 1, 2
/* 802681F0 00265130  7C 00 00 26 */	mfcr r0
/* 802681F4 00265134  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 802681F8 00265138  4E 80 00 20 */	blr 

.global cBgW_CheckBRoof
cBgW_CheckBRoof:
/* 802681FC 0026513C  C0 02 B6 EC */	lfs f0, lbl_804550EC-_SDA2_BASE_(r2)
/* 80268200 00265140  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80268204 00265144  7C 00 00 26 */	mfcr r0
/* 80268208 00265148  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8026820C 0026514C  4E 80 00 20 */	blr 

.global cBgW_CheckBWall
cBgW_CheckBWall:
/* 80268210 00265150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80268214 00265154  7C 08 02 A6 */	mflr r0
/* 80268218 00265158  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026821C 0026515C  DB E1 00 08 */	stfd f31, 8(r1)
/* 80268220 00265160  FF E0 08 90 */	fmr f31, f1
/* 80268224 00265164  4B FF FF C1 */	bl cBgW_CheckBGround
/* 80268228 00265168  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026822C 0026516C  40 82 00 1C */	bne lbl_80268248
/* 80268230 00265170  FC 20 F8 90 */	fmr f1, f31
/* 80268234 00265174  4B FF FF C9 */	bl cBgW_CheckBRoof
/* 80268238 00265178  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026823C 0026517C  40 82 00 0C */	bne lbl_80268248
/* 80268240 00265180  38 60 00 01 */	li r3, 1
/* 80268244 00265184  48 00 00 08 */	b lbl_8026824C
lbl_80268248:
/* 80268248 00265188  38 60 00 00 */	li r3, 0
lbl_8026824C:
/* 8026824C 0026518C  CB E1 00 08 */	lfd f31, 8(r1)
/* 80268250 00265190  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80268254 00265194  7C 08 03 A6 */	mtlr r0
/* 80268258 00265198  38 21 00 10 */	addi r1, r1, 0x10
/* 8026825C 0026519C  4E 80 00 20 */	blr 

