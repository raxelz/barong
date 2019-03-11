# frozen_string_literal: true

require_dependency 'barong/event_api'

ActiveSupport.on_load(:active_record) do
  ActiveRecord::Base.include EventAPI::ActiveRecord::Extension
end

Barong::App.define do |config|
  config.set(:event_api_jwt_private_key, "LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFcFFJQkFBS0NBUUVBMmxVUEJWVXkyeVd"\
                                         "hNS85bmYyazN2SEZoNUY5Wjk5d2g3Q2FNU2dtK1A0cndsUERWCk9pZTZmdGsxY1FpM3R0bGdnOW10Z2"\
                                         "J5UkNyZmNxZk1wTHF5TkE1aVZUZDlZTzdoU1crOXd2eG81RDFwVzRrc1oKeVZUc3plZDRmTGg5Z0ptS"\
                                         "E0zd3BEdFkyZGZ3c3BidkRyM09TUEpFakxHVE5oR0ZDSmlTNDRTNmY1aytoSFFJMApoZkNHclNPVVI5"\
                                         "N1ZwU0pNS2FDekdacmR4OUhsWDArYjhZdzFPcFNsa2IzblIvQituZWhPYzNXNm5QYTMyYzZiCnBZRi9"\
                                         "mWmJ4SERNSmIzczZEYUxERzFTbmhqb0plVHo2SWg3Q2Qrc0NYWUl5Z2VHVE9sQ2dnNC9uZFRzSVN1dl"\
                                         "AKS3ptdjFadDljWDhXV2VZQ3daRTFBOVpBOUZ3dC9nVXljZUpOMHdJREFRQUJBb0lCQUNxNXhJTzlwW"\
                                         "U1mTzg0MAp1L05DQ3VjMHBQeUU4RjFCMWQyWnVaQnZrYXhycXlMcWNqKzhNSkhNUGRvTjQ2M0RvbENM"\
                                         "RTVvMDVZbGNhN0ZTClpYZTl5cWF1Z0dGSjJNRnZFNmJzRjNzK1RYWkVyb1lBUGw2WTRQSjJYcXpCaWN"\
                                         "YVnhaQjh0cWd4b1Z5N2FaMVIKUGowaWQ3YWtqR2FPbjIxTmZ4MXB5RWhBMElmSUp1eWMvQ2FpNk9iL1"\
                                         "IvNkxXb1pDNXBjV2VzRlMyN3dkeHpNOQpGQm9YUnVWclE3c3hWNUl1WS9sc2EwQ1VTNUVLMWdxZDRob"\
                                         "DRENXUrMG4wMElYQTk1QTE4QjhaNUhER0Y1T2QrCjN2MnJqTmVNaHNrZmdDZW5WN084NXhob1haeVYx"\
                                         "SiswWGY1SDh3eFF6U1ZLa1BMVlVhSWJOdkMyMXhWRWkycWQKeHh6RVV4a0NnWUVBNzA0Z0VaNzNUUHI"\
                                         "wbG1iZWVpTUJSRlhNZ2pKdWtlWWpKaFZvZWZwV1dydXhaRkxsR3E3WgpLdXlMcEQyMUc0akJLVThnZW"\
                                         "c1N1lsaGQxUFBPS0dweUtsVHliYlo5TjU5TGFLSEw2Z3QyMUt1aFV3Q1Yya3cwCkw3RW5DbDgvRFBhR"\
                                         "DhZa2llS0I1MjMyQVNZVEpVbHVrK09tbUdvSzM1NDE5T1FwV2M2QTJ6WVVDZ1lFQTZaQmUKQk9Od2NS"\
                                         "YjJpc21GTWxZZ1gvU2ZtTTNVaSsvZFdaRW9lbTN6YkdxdkYvODFycm5UOUpVUndmYXZSYm9KaW9WQQp"\
                                         "sMERLQW5zNSs4enJtbDdHQnNWN2JvUElqWWdUWGpRMGVMR0FzZjRwdlo5RWxpOS8yY05saUdIdElMMG"\
                                         "YzQzVCCk90enpMcjRIdTB4amo3VVNWeCs5dXpFam4zdVpEMGI1M1RWeVFYY0NnWUVBbWdsVzJTRFRIS"\
                                         "2taRVVyc0FBQlMKUzNOUzdhZWF4cTAxaU1rVTlCY3d5THl5UmRxYUFGLzJDQXcxSXFaWjBueG5vYmgr"\
                                         "TmpMbU52cWNnM3ZnQXVIcAoxTmZUS00zanNnOEdValo3ZEk2bWtlUmNObnBVK3l3OEYwclh6M1JadUh"\
                                         "WaG52TGZ6bmUxbUpRakpLK2xpeTdVCmRTaW9zNzNhdE9DOWJ4NzVZUG9LN0tVQ2dZRUEzeWRvTFJPQk"\
                                         "l3dmxrc1RuMWlnajFvcEswaHdXcjMwRjU4V2cKL3hoK00xL2EydnFqdDhVa2xkSzNuTEtzMDluanM4M"\
                                         "k00UGF1QzZEZ3pZd0Vyd0ZPQXJvOExHTU5BdXk0VkpGYwpjTlJuT2FpMUNNOWJJSU5SakNYOHBFbXIz"\
                                         "bFBVVlBKOHNGamFvQlpBSE52blpDNkV6MmtzUmVXMU8zTkQwaXptCkhrd3FWaEVDZ1lFQXFKbDdsVUl"\
                                         "ML1QzM0JyWmFTSmJ3WTdzaDh3bmlyeDcyYUw1TFI3RUVVNVFkQzNoT28vYlYKTTdtUnJCalB1ZGpmMX"\
                                         "RHZ1pHWGxqSFR5cUJqQjJBMHphdXQvbXk5UEE2K1p1WEV3ektLb2xlRXUvemQ2Zm41NwpMNlp2VXE3b"\
                                         "XZtK0tXbDNQeUFPemhKamE1aVp1Tmc0eGJDNGdQWVRkN1NGbUdUZm52UjJLbXpjPQotLS0tLUVORCBS"\
                                         "U0EgUFJJVkFURSBLRVktLS0tLQo=")
end
